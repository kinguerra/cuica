class StaticPagesController < ApplicationController
  def filme
    @noticia = Post.all
    @exibition = Cinema.all(:limit => 3)
  end
end
