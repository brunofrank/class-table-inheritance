require 'rubygems'
require 'minitest/autorun'
require 'minitest/reporters'
require 'active_record'
require 'class-table-inheritance'
require 'yaml'

Minitest::Reporters.use!

database = YAML::load(IO.read(File.dirname(__FILE__) + '/database.yml'))
ActiveRecord::Base.establish_connection(database['sqlite3'])
load(File.dirname(__FILE__) + "/schema.rb") if !File.exist?(database['sqlite3'][:database])

require 'models/product'
require 'models/book'
require 'models/mod'
require 'models/mod/video'
require 'models/mod/user'
require 'models/manager'