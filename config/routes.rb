Rails.application.routes.draw do
  devise_for :users, path: '', controllers: {registrations: 'users/registrations'}
  as :user do 
    get '/schools/sign_up', to: 'users/registrations#new_school'
  end 
  root :to => 'pages#index'
  get "/about" => 'pages#about'
  get "/contact" => 'pages#contact'
  get "/template" => 'pages#template'
  
  resources :applications, only: [:new, :create, :edit, :update] do
  	resources :educations, only: [:new, :create, :edit, :update] 
  end
end
