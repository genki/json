#!/usr/bin/env ruby

require 'bullshit'
case ARGV.first
when 'ext'
  require 'json/ext'
when 'pure'
  require 'json/pure'
when 'yaml'
  require 'yaml'
  require 'json/pure'
else
  require 'json/pure'
end

module ParserBenchmarkCommon
  include JSON

  def setup
    a = [ nil, false, true, "fÖß\nÄr", [ "n€st€d", true ], { "fooß" => "bär", "qu\r\nux" => true } ]
    @big = a * 100
    @json = JSON.generate(@big)
  end

  def generic_reset_method
    @result == @big or raise "not equal"
  end
end

class ParserBenchmarkExt < Bullshit::RepeatCase
  include ParserBenchmarkCommon

  warmup      yes
  iterations  100

  truncate_data do
    alpha_level 0.05
    window_size 10
  end

  output_dir File.join(File.dirname(__FILE__), 'data')
  output_filename benchmark_name + '.log'
  data_file yes
  histogram yes

  def benchmark_parser
    @result = JSON.parse(@json)
  end

  alias reset_parser generic_reset_method
end

class ParserBenchmarkPure < Bullshit::RepeatCase
  include ParserBenchmarkCommon

  warmup      yes
  iterations  100

  truncate_data do
    alpha_level 0.05
    window_size 10
  end

  output_dir File.join(File.dirname(__FILE__), 'data')
  output_filename benchmark_name + '.log'
  data_file yes
  histogram yes

  def benchmark_parser
    @result = JSON.parse(@json)
  end

  alias reset_parser generic_reset_method
end

class ParserBenchmarkYAML < Bullshit::RepeatCase
  warmup      yes
  iterations  100

  truncate_data do
    alpha_level 0.05
    window_size 10
  end

  output_dir File.join(File.dirname(__FILE__), 'data')
  output_filename benchmark_name + '.log'
  data_file yes
  histogram yes

  def setup
    a = [ nil, false, true, "fÖß\nÄr", [ "n€st€d", true ], { "fooß" => "bär", "qu\r\nux" => true } ]
    @big = a * 100
    @json = JSON.pretty_generate(@big)
  end

  def benchmark_parser
    @result = YAML.load(@json)
  end

  def generic_reset_method
    @result == @big or raise "not equal"
  end
end

if $0 == __FILE__
  Bullshit::Case.autorun false

  case ARGV.first
  when 'ext'
    ParserBenchmarkExt.run
  when 'pure'
    ParserBenchmarkPure.run
  when 'yaml'
    ParserBenchmarkYAML.run
  else
    system "rake clean"
    system "ruby #$0 yaml"
    system "ruby #$0 pure"
    system "rake compile"
    system "ruby #$0 ext"
    Bullshit.compare do
      output_filename File.join(File.dirname(__FILE__), 'data', 'ParserBenchmarkComparison.log')

      benchmark ParserBenchmarkExt,   :parser, :load => yes
      benchmark ParserBenchmarkPure,  :parser, :load => yes
      benchmark ParserBenchmarkYAML, :parser, :load => yes
    end
  end
end
