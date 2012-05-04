require 'test_helper'

class ClassTableInheritanceTest < Test::Unit::TestCase
  
  def test_create
    name = 'Bike'
    
    product = Product.new
    product.name = name
    assert_equal true, product.save
    
    product = Product.find product.id
    assert_equal name, product.name
  end

  
  def test_inheritance_book
    title = 'Atlas Shrugged'
    isbn = '9780451191144'

    book = Book.new
    book.name = title
    book.isbn = isbn
    assert_equal true, book.save
    
    book = Book.find book.id
    assert_equal title, book.name
    assert_equal isbn, book.isbn
    assert_equal "some_method", book.some_method
  end  
  
  def test_inheritance_video
    name = 'Amy Whinehouse - Rehab'
    url = 'http://www.youtube.com/watch?v=3QI8RjKibyc'
    
    video = Mod::Video.new
    video.name = name
    video.url = url
    assert_equal true, video.save
    
    video = Mod::Video.find video.id
    assert_equal name, video.name
    assert_equal url, video.url    
  end  

  def test_inheritance_user_save
    name = 'bfscordeiro'
    
    user = Mod::User.new
    user.name = name
    assert_equal true, user.save
    
    user = Mod::User.find user.id
    assert_equal name, user.name
  end  

  def test_inheritance_manager_save
    name = 'bfscordeiro'
    salary = '6000'
    
    manager = Manager.new
    manager.name = name
    manager.salary = salary
    assert_equal true, manager.save
    
    manager = Manager.find manager.id
    assert_equal name, manager.name
    assert_equal salary, manager.salary    
  end  

  
end
