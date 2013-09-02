class Role < ActiveRecord::Base
  attr_accessible :id, :role
  
  belongs_to :user
end
