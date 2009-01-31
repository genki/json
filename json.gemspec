# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{json}
  s.version = "1.1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Florian Frank"]
  s.date = %q{2009-01-31}
  s.default_executable = %q{edit_json.rb}
  s.description = %q{}
  s.email = %q{flori@ping.de}
  s.executables = ["edit_json.rb"]
  s.extensions = ["ext/json/ext/parser/extconf.rb", "ext/json/ext/generator/extconf.rb"]
  s.files = ["benchmarks", "benchmarks/data", "benchmarks/generator_benchmark.rb", "benchmarks/parser_benchmark.rb", "bin", "bin/edit_json.rb", "bin/prettify_json.rb", "CHANGES", "data", "data/example.json", "data/index.html", "data/prototype.js", "doc-templates", "doc-templates/main.txt", "ext", "ext/json", "ext/json/ext", "ext/json/ext/generator", "ext/json/ext/generator/extconf.rb", "ext/json/ext/generator/generator.c", "ext/json/ext/generator/unicode.c", "ext/json/ext/generator/unicode.h", "ext/json/ext/parser", "ext/json/ext/parser/extconf.rb", "ext/json/ext/parser/parser.c", "ext/json/ext/parser/parser.rl", "ext/json/ext/parser/unicode.c", "ext/json/ext/parser/unicode.h", "GPL", "install.rb", "json.gemspec", "lib", "lib/json", "lib/json/add", "lib/json/add/core.rb", "lib/json/add/rails.rb", "lib/json/Array.xpm", "lib/json/common.rb", "lib/json/editor.rb", "lib/json/ext.rb", "lib/json/FalseClass.xpm", "lib/json/Hash.xpm", "lib/json/json.xpm", "lib/json/Key.xpm", "lib/json/NilClass.xpm", "lib/json/Numeric.xpm", "lib/json/pure", "lib/json/pure/generator.rb", "lib/json/pure/parser.rb", "lib/json/pure.rb", "lib/json/String.xpm", "lib/json/TrueClass.xpm", "lib/json/version.rb", "lib/json.rb", "Rakefile", "README", "RUBY", "tests", "tests/fixtures", "tests/fixtures/fail1.json", "tests/fixtures/fail10.json", "tests/fixtures/fail11.json", "tests/fixtures/fail12.json", "tests/fixtures/fail13.json", "tests/fixtures/fail14.json", "tests/fixtures/fail18.json", "tests/fixtures/fail19.json", "tests/fixtures/fail2.json", "tests/fixtures/fail20.json", "tests/fixtures/fail21.json", "tests/fixtures/fail22.json", "tests/fixtures/fail23.json", "tests/fixtures/fail24.json", "tests/fixtures/fail25.json", "tests/fixtures/fail27.json", "tests/fixtures/fail28.json", "tests/fixtures/fail3.json", "tests/fixtures/fail4.json", "tests/fixtures/fail5.json", "tests/fixtures/fail6.json", "tests/fixtures/fail7.json", "tests/fixtures/fail8.json", "tests/fixtures/fail9.json", "tests/fixtures/pass1.json", "tests/fixtures/pass15.json", "tests/fixtures/pass16.json", "tests/fixtures/pass17.json", "tests/fixtures/pass2.json", "tests/fixtures/pass26.json", "tests/fixtures/pass3.json", "tests/runner.rb", "tests/test_json.rb", "tests/test_json_addition.rb", "tests/test_json_fixtures.rb", "tests/test_json_generate.rb", "tests/test_json_rails.rb", "tests/test_json_unicode.rb", "TODO", "tools", "tools/fuzz.rb", "tools/server.rb", "VERSION"]
  s.has_rdoc = true
  s.homepage = %q{http://json.rubyforge.org}
  s.rdoc_options = ["--title", "JSON -- A JSON implemention", "--main", "JSON", "--line-numbers"]
  s.require_paths = ["ext/json/ext", "ext", "lib"]
  s.rubyforge_project = %q{json}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A JSON implementation as a Ruby extension}
  s.test_files = ["tests/runner.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
