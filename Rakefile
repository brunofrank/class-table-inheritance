require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the class_table_inheritance plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the class_table_inheritance plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ClassTableInheritance'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "class-table-inheritance"
    gem.summary = <<EOF
ActiveRecord plugin designed to allow simple multiple table (class) inheritance.
EOF
    gem.description = <<EOF
ActiveRecord plugin designed to allow simple multiple table (class) inheritance.
EOF
    gem.email = "tvdeyen@gmail.com"
    gem.homepage = "http://github.com/tvdeyen/class-table-inheritance"
    gem.authors = `git log --pretty=format:"%an"`.split("\n").uniq.sort
    gem.add_dependency "activerecord", ">=3.0.0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available."
  puts "Install it with: gem install jeweler"
end
