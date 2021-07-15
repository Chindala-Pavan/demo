Rails.application.routes.draw do
  
  


  get 'welcome/index'

=begin
  namespace "api" do
    namespace "v1" do
      resources :articles
    end
  end
  resources :articles do
    resources :comments
  end
  resources :users, only: [:new, :create]
  get 'login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  delete 'logout', to: 'sessions#destroy'
  root ''
=end
  devise_for :admins
  resources :admins
  
  #get 'welcome',to: 'welcome#index'
  root 'welcome#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"
  
  #post "/articles/:id/edit", to: "articles#update"
  #root "articles#index"

  #instead of these two get routes we can write resources that maps all the conventional routes for the collection of resources for articles
  

end
