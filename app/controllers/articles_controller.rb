class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new

  end

  def create
    article_params = params.
        require(:article).
        permit(:title, :content)
    @article = Article.new(article_params)

    if @article.save
      redirect_to article_path(@article.id)
    else
      render :new
    end
  end

  def show
    id = params[:id]
    @article = Article.find(id)
  end

  def edit
    id = params[:id]
    @article = Article.find(id)
  end

  def update
    id = params[:id]
    @article = Article.find(id)
    article_params = params.
        require(:article).
        permit(:title, :content)
    if @article.update(article_params)
      redirect_to article_path(@article.id)
    else
      render :edit
    end
  end
end
