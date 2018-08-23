Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # resources :venues
  resources :breweries, only: [:index, :show]
  resources :reviews
  resources :beers,  only: [:index, :show]
  resources :users
  resources :venues
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
