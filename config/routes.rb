Projekt::Application.routes.draw do
  resources :microposts


  resources :users
  resources :sessions,   :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]
  
  get "microposts/show"
  
  get "users/show"
  get "users/index"

  devise_for :users
  #devise_for :users do
	#get 'sign_out',    :to => 'devise/sessions#destroy'
  #end
  resources :users

  get "pages/home"

  get "pages/contact"

  get "pages/about"

  get "pages/help"

  
  match '/home',    :to => 'pages#home'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  #match '/users/sign_out',    :to => 'devise/sessions#destroy'
  
  
  root :to => 'pages#home'
end
