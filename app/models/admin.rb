class Admin < ActiveRecord::Base
  has_secure_password

  attr_accessible :name, :password, :password_confirmation
end
