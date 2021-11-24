Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "author#index"
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"
  post "/articles/:id/edit", to: "articles#update"

  #instead of these two get routes we can write resources that maps all the conventional routes for the collection of resources for articles
  resources :articles do
    resources :comments
  end

end
