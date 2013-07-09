class StaticPagesController < ApplicationController
  def filme
  	@noticia = Post.order("created_at desc").limit(3)
  end
end
