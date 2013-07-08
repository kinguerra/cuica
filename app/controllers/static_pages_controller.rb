class StaticPagesController < ApplicationController
  def filme
    @noticia = Post.all(:limit => 3)
    @exibition = Cinema.all(:limit => 3)
  end

  # def personagem
  # end

  def equipe
  end
end
