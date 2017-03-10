Rails.application.routes.draw do

  root :to => 'pages#index'
  get "/about" => 'pages#about'
  get "/contact" => 'pages#contact'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
