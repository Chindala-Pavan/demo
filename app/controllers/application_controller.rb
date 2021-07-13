class ApplicationController < ActionController::Base

    #prevent CSRF attacks by raising an exception
    # for APIs, you may want to use :null_session instead
    #protect_from_forgery with: :exception 
    #before_action :login_required

    #This method checks if we have a user signed in
    helper_method :current_user
    def current_user
        User.find_by(id: session[:user_id])
        
    end

    helper_method :logged_in?
    def logged_in?
        !current_user.nil?
    end
    
    #this method gives us details about our user

    helper_method :log_out
    def log_out
        session.delete(:user_id)

        @current_user=nil
        
        
    end
    before_action :authorized
    def authorized
        redirect_to '/welcome' unless logged_in?
    end
    
end
