
class Api::V1::ArticlesController < ApplicationController
            def index
                articles=Article.order('id DESC')
                render json: {status: 'Sucess',message: 'loaded Articles', data: articles}, status: :ok
            end
            def show
                article=Article.find(params[:id])
                render json: {status: "sucess", message: 'loaded article',data: article}, status: :ok
            end
            def create
                article=Article.new(article_params)

                if article.save
                    render json: {status: "sucesses",message:"saved article",data: article},status: :ok
                else
                    render json: {status: "fail",message: "article not saved",data: article.errors},status: :unprocessable_entity
                end
            end
            def destroy
                article=Article.find(params[:id])
                article.destroy
                render json: {status: "sucess",message:"deleted article",data: article},status: :ok
            end
            def update
                article=Article.find(params[:id])

                if article.update(article_params)
                    render json: {status: "sucess",message:"updated an article",data: article},status: :ok
                else
                    render json: {status: "fail",message:"not updated an article",data: article.errors},status: :unprocessable_entity

                end
            end

            private
            def article_params
                params.permit(:title,:body)
            end

end
    
