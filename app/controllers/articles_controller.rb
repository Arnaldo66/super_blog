class ArticlesController < ApplicationController
  
  def index
  	@articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
  	@commentaire = Commentaire.new
  	@commentaire.article = @article
  end



end

