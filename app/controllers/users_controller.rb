class UsersController < ApplicationController
    #skip_before_action :authorized, only: [:new, :create]
    skip_before_action :verify_authenticity_token
    def new
        @user=User.new
    end
    def create
        @user=User.new(params.require(:user).permit(:username,:password_digest,:avatar))
        if @user.save
            render json: {message: "user created sucessfully"}
        else
            render json: {message: "user not created "}
        end

        #session[:user_id]=@user.id
        #redirect_to '/welcome'
    end

    def show
        @user=User.find(params[:id])
    end


end
