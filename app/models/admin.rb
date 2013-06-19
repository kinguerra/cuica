class Admin < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :trackable, :timeoutable, :lockable  
  attr_accessible :login, :email, :password, :password_confirmation
end
# class Admin < ActiveRecord::Base
#   # Include default devise modules. Others available are:
#   # :token_authenticatable, :confirmable,
#   # :lockable, :timeoutable and :omniauthable
#   devise :database_authenticatable, :registerable,
#          :recoverable,  :trackable, :validatable

#   # Setup accessible (or protected) attributes for your model
#   attr_accessible :email, :password, :password_confirmation, :remember_me
#   # attr_accessible :title, :body
# end