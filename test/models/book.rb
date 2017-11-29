class Book < ActiveRecord::Base
  inherits_from :product
  
  def some_overrriden_method
    "book"
  end
end