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

  s.rubyforge_project = "class-table-inheritance"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end