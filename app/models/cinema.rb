class Cinema < ActiveRecord::Base
  attr_accessible :date, :place, :address, :link
  

  belongs_to :admin

  validates_presence_of :address
  validates_presence_of :place

  default_scope order: 'cinemas.created_at ASC'

  
  before_save do
    unless self.link.index(/(http|https):\/\//, 0) || self.link.empty?
      self.link.insert(0, "http://")
    end
  end
end