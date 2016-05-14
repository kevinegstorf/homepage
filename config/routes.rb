Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end

  root 'pages#home'
  # root 'posts#index'
  get '/about', to: 'pages#about'
  get '/home', to: 'pages#home'
end
