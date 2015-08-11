class ArticlesController < ApplicationController
  def index
  end

  def new

  end

  def create
    article_params = params.
        require(:article).
        permit(:title, :content)
    @article = Article.new(article_params)
    @article.save
  end


end
