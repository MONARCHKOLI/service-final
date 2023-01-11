Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root "contractors#cool"
  get '/signup' => 'contractors#new'
  post '/contractors' => 'contractors#create'
  resources :contractors do
    resources :tasks
  end
end
