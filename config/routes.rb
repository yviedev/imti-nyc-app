Rails.application.routes.draw do
  devise_for :users, path: ''

  root :to => 'pages#index'
  get "/about" => 'pages#about'
  get "/contact" => 'pages#contact'

  resources :applications, only: [:new, :create, :edit, :update] do
  	resources :educations, only: [:index, :new, :create, :edit, :update]
  	resources :montessori_trainings, only: [:index, :new, :create, :edit, :update]
  	resources :work_experiences, only: [:index, :new, :create, :edit, :update]
    resources :references, only: [:index, :new, :create, :edit, :update]
  	resources :documents, only: [:index, :new, :create, :edit, :update] 
  end
end
