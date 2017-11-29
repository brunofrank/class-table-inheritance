class Product < ActiveRecord::Base
  def some_method
    "some_method"
  end
  
  def some_overrriden_method
    "product"
  end
end