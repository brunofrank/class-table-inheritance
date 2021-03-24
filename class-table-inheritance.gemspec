# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'class-table-inheritance/version'

Gem::Specification.new do |s|
  s.name        = "class-table-inheritance"
  s.version     = ClassTableInheritance::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bruno Frank"]
  s.email       = ["bfscordeiro@gmail.com"]
  s.homepage    = "https://github.com/brunofrank/class-table-inheritance"
  s.summary     = %q{ActiveRecord plugin designed to allow simple multiple table (class) inheritance.}
  s.description = %q{ActiveRecord plugin designed to allow simple multiple table (class) inheritance.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = '>= 2.5', '< 4'

  s.add_runtime_dependency 'activerecord', '~>6.0'

  s.add_development_dependency 'minitest-reporters','~>1.1'
  s.add_development_dependency 'rake', '>=11'
  s.add_development_dependency 'sqlite3', '~>1.3'
end
