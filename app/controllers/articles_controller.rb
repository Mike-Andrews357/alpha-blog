class ArticlesController < ApplicationController

  def index

  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end

  def new
    @article = Article.new
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

end