Rails.application.routes.draw do
  devise_for :users, path: ''

  resources :applications, only: [:new, :create, :edit, :update]

  root :to => 'pages#index'
  get "/about" => 'pages#about'
  get "/contact" => 'pages#contact'
  
end
