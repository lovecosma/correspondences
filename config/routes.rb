Rails.application.routes.draw do
  resources :intentions
  resources :correspondences
  resources :categories
  root to: "application#welcome"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
