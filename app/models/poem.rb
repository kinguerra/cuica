class Poem < ActiveRecord::Base
	attr_accessible :title, :content

  belongs_to :admin

  validates_presence_of :title
  validates_presence_of :content

  default_scope order: 'poems.created_at ASC'
end