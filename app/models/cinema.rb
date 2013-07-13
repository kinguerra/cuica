class Cinema < ActiveRecord::Base
  attr_accessible :date, :place, :address

  belongs_to :admin

  validates_presence_of :address
  validates_presence_of :place

  default_scope order: 'cinemas.created_at DESC'
end