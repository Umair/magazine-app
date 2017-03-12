class ArticlesController < ApplicationController
  before_action :authenticate_user!

  #List all articles
  def index
    @articles = current_user.articles.order('created_at desc')
  end

  #Show details of article
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    current_user.articles.create(article_params)

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end


end