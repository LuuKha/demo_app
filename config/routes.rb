Rails.application.routes.draw do
	
	get 'sessions/new'

	root 'static_pages#home'
	get 'signup'  => 'users#new'
	get    'login'   => 'sessions#new'
	post   'login'   => 'sessions#create'
	delete 'logout'  => 'sessions#destroy'
	resources :users 
	resources :entries,          only: [:create, :destroy]
	resources :relationships,       only: [:create, :destroy,:show]
	resources :comments,            only: [:create]
end
