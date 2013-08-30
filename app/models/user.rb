class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :avatar
  has_attached_file :avatar,
					:styles => {
					  :mini => "40x40>",
                      :thumb => "75x75>",
                      :small => "150x150>"
                    }  
					
	def self.search(search, page)
		paginate :per_page => 5, :page => page,
            :conditions => ['name like ?', "%#{search}%"],
            :order => 'name'
	end
	
	has_many :microposts, :dependent => :destroy
end
