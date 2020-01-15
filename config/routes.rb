Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  get 'sessions/new'

  root 'pages#index'
  get  'pages/help'
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
