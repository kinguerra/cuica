class Post < ActiveRecord::Base
  attr_accessible :content, :title

  belongs_to :admin

  validates_presence_of :title
  validates_presence_of :content

  default_scope order: 'posts.created_at DESC'
end
