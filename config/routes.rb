Rails.application.routes.draw do

	devise_for :users
	
	root :to => 'books#top'
	
	resources :user_images, only: [:new, :create, :index, :show, :destroy] do

	end
	resources :users, only: [:show, :edit, :update]
	# onlyを使って不必要なルーティングを制限
end