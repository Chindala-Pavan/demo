class ArticlesController < ApplicationController
  #http_basic_authenticate_with name: "dhh", password: "secret",except: [:index,:show]
  def index
    @articles = Article.all
  end
  def apinew
    render json: {n:123,m:345}
  end

  def show
    @article=Article.find(params[:id])
  end


  def new
    @article=Article.new
  end


  def create
    @article=Article.new(article_params)
    
    if @article.save
      redirect_to @article 
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
    #binding.pry
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params_e)
      redirect_to @article
    else
      render :edit
    end
  end


  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end


  private
    def article_params
      params.require(:article).permit(:title,:body,:status)
    end
    def article_params_e
      params.permit(:title,:body,:status)
    end

end
