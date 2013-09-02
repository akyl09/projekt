class Category < ActiveRecord::Base
  attr_accessible :cat_id, :cat_name
  
  has_many :category_bundles
  has_many :users, through: :category_bundles
end
