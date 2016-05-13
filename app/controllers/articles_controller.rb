class ArticlesController < ApplicationController
  def show
    @article = Article.find_by title: params[:id]

    # redirect to 'new' if article is not found
    if @article == nil
      redirect_to action: 'new', title: params[:id]
    end
    # @article = Article.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
