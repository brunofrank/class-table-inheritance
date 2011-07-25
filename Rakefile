require 'bundler'
require 'rake/testtask'
Bundler::GemHelper.install_tasks

# just 'rake test'
Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end