class StaticPagesController < ApplicationController
  def filme
    @noticia = Post.last
  end

  # def personagem
  # end

  def equipe
  end
end
