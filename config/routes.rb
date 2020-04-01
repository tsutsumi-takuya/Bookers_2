Rails.application.routes.draw do

  devise_for :users
  
  root :to => 'users#top'

  resources :books

  get "users/:id" => 'users#show', as: :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
