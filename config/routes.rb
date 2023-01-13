Rails.application.routes.draw do
  root "bookmarks#index"

  resources :bookmarks
  resources :collections do
    member do
      get :bookmarks
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
