Rails.application.routes.draw do
  devise_for :users, path: ''

  resources :applications, only: [:new, :create, :edit, :update]
end
