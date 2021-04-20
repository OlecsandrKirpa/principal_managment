Rails.application.routes.draw do
  resources :hours
  resources :reservations
  resources :school_classes
  resources :teachers
  resources :statuses
  resources :rooms
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
