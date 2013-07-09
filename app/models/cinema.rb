class Cinema < ActiveRecord::Base
  attr_accessible :date, :place

  belongs_to :admin

  validates_presence_of :date
  validates_presence_of :place

  default_scope order: 'cinemas.date DESC'
end