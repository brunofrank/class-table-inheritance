require 'rake'
spec = Gem::Specification.new do |s| 
  s.name = "class-table-inheritance"
  s.version = "1.1.1"
  s.author = "Bruno Frank Cordeiro"
  s.email = "bfscordeiro@gmail.com"
  s.platform = Gem::Platform::RUBY
  s.summary = "ActiveRecord plugin designed to allow 
   simple multiple table (class) inheritance."
  s.files = FileList["{lib}/**/*"].to_a
  s.require_path = "lib"
  s.autorequire = "name"
  s.test_files = FileList["{test}/**/*test.rb"].to_a
  s.has_rdoc = false
  s.extra_rdoc_files = ["README"]
end
