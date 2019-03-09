# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  get '/users' => 'users#index'
  get '/users/:handle' => 'users#show'
  get '/users/handle' => 'users#changehandle'

  # RESTful routes
  resources :games, except: %i[new edit destroy update]
  get '/highscores' => 'games#highscores'
end
