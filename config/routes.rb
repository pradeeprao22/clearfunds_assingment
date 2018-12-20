Rails.application.routes.draw do
  #For API
  mount API => '/'

  devise_for :users

  root 'pages#home'

  resources :links, only: [ :create] do
    collection do 
      get :top
    end
  end
  
  match ':in_url', to: 'links#go', via: [:get] 
end
