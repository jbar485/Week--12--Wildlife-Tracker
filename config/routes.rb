Rails.application.routes.draw do
  root to: 'animals#index'
  resources :animals do
    resources :sightings
  end

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
