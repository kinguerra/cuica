class StaticPagesController < ApplicationController
  def filme
  	@noticia = Post.order("created_at desc").limit(3)
  	@exibition = Cinema.order("created_at desc")
  	@poem = Poem.order("created_at DESC")
  end
end
