
spec = Gem::Specification.new do |s| 
  s.name = "class-table-inheritance"
  s.description = "ActiveRecord plugin designed to allow simple multiple table inheritance CTI."
  s.version = "1.2.1"
  s.author = "Bruno Frank Cordeiro"
  s.email = "bfscordeiro@gmail.com"
  s.platform = Gem::Platform::RUBY
  s.summary = "ActiveRecord plugin designed to allow 
   simple multiple table (class) inheritance."
  s.files = Dir.glob('**/*') - Dir.glob('test/**/*') - ['class-table-inheritance.gemspec']
  s.require_path = "lib"
  s.has_rdoc = false
  s.extra_rdoc_files = ["README"]
end