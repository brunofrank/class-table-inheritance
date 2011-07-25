ActiveRecord::Schema.define(:version => 0) do
  create_table :products, :force => true do |t|
    t.string :name
  end
  
  create_table :books, :force => true do |t|
    t.string :isbn
    t.integer :product_id
  end
  
  create_table :mod_videos, :force => true do |t|
    t.integer :product_id
    t.string :url   
  end  
  
  create_table :mod_users, :force => true do |t|
    t.string :name
  end  
  
  create_table :managers, :force => true do |t|
    t.integer :mod_user_id
    t.string :salary
  end  
end