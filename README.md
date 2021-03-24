[![Build Status](https://travis-ci.org/brunofrank/class-table-inheritance.svg?branch=master)](https://travis-ci.org/brunofrank/class-table-inheritance)

Change log
----------

### 1.5.0

* Add ActiveRecord 6.0 support
* Require Ruby 2.5 or newer.


### 1.4.0

* Add ActiveRecord 5.2 support
* Require Ruby 2.2 or newer.


### 1.3.1

* Removed 'set_primary_key' deprecation warning
* Make the gem depencies explicit and require ActiveRecord 4.x or 5.0


### 1.3.0
* Now you can inherits from and to modules like inherits_from 'Module::Model', see the the name of
  field must be module_model_id:integer thanks for Marc Remolt (https://github.com/mremolt).
* Unit test


Note about version
------------------

If you are using Rails 2.3.8 or other version < 3, you have to use the version 1.1.x of this gem.
For Rails 3 you need to use the version 1.2.x or master of this gem.
For Rails 4 and 5 you need to use the version 1.3.x to 1.4.x.
For Rails 6 you need to use version 1.5.x or master of this gem.

ClassTableInheritance
---------------------

 This is an ActiveRecord plugin designed to allow 
 simple multiple table (class) inheritance.
 
 This plugin was inspired by:
 inherits_from plugin => http://github.com/rwl4/inherits_from and
 Multiple Table Inheritance with ActiveRecord => http://mediumexposure.com/multiple-table-inheritance-active-record/

How to install
--------------

gem install class-table-inheritance

Example
-------

### Migrations 

```ruby
  create_table :products do |t|
    t.string :description, :null => false
    t.string :subtype # Only if you need access of both side see example
    t.decimal :price
    t.timestamps
  end
  
  create_table :books, :inherits => :product do |t|
    t.string :author, :null => false
  end
  
  create_table :videos, :inherits => :product do |t|
    t.string :year, :null => false
    t.string :genre, :null => false
  end
```

### Models

```ruby
  class Product < ActiveRecord::Base
    acts_as_superclass # only if you want top-down access.
  end

  class Book < ActiveRecord::Base
    inherits_from :product
  end

  class Video < ActiveRecord::Base
    inherits_from :product
  end

  book = Book.find(1)
  book.name => "Agile Development with Rails"
  book.author => "Dave Thomas"
  book.price => 19.00
  
  video = Video.find(2)
  video.name => "Inseption"
  video.year => "2010"
  video.genre => "SCI-FI" 
  video.price => 22.00
  
  book = Book.new
  book.name = "Hamlet"
  book.author = "Shakespeare, William"
  book.price => 14.00
  book.save
```
  
Module inheritance
------------------

### Migrations 
```ruby
create_table :mod_users do |t|
  t.string :name, :null => false
end  

create_table :managers, :inherits => 'Mod::User' do |t|
  t.string :salary, :null => false
end
```

### Models

```ruby
class Mod::User < ActiveRecord::Base
end  

class Manager < ActiveRecord::Base
  inherits_from 'Mod::User'  
end
```

Top-down access (Polymorphic)
-----------------------------

  if you want to access product and get field in the subclass do you need to create a field subtype:string in superclass and ad acts_as_superclass in superclass and now you can do like this.

```ruby
  product = Product.find 1  # This is a Book instance.
  product.author

  product = Product.find 2 # This is a Video instance.
  product.genre
```
  
  if you need help contanct me: bfscordeiro (at) gmail.com .


Copyright (c) 2010 Bruno Cordeiro, released under the MIT license
