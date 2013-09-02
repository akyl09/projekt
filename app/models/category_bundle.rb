class CategoryBundle < ActiveRecord::Base
  attr_accessible :cat_id, :user_id
  
  belongs_to :microposts, dependent: :destroy
  belongs_to :users
end
