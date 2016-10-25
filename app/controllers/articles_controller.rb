class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    byebug
    @article = Article.create(article_params)
    redirect_to article_path(@article)
  end

  def show
    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:link, :title)
  end

end
