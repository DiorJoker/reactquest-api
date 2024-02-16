class ArticlesController < ApplicationController
  def create
    @article = Article.new(article_params)
    if @article.save
      render json: {
        article: {
          title: @article.title,
          description: @article.description,
          body: @article.body,
          taglist: @article.taglist
        }
      }
    else
      render json: { errors: @article.errors.full_messages }
    end
  end

  def show
    @article = Article.find(params[:id])
    render json:
        @article
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      render json: {
        todo: {
          id: @article.id,
          title: @article.title
        }
      }
    else
      render json: { errors: @article.errors.full_messages }
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    render json: {
      title: @article.title
    }
  end

  def index
    @articles = Article.all
    render json:
        @articles
  end

  private
    def article_params
      params.require(:article).permit(:title, :description, :body, :taglist)
    end
end
