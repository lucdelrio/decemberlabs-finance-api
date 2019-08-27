# frozen_string_literal: true

Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  get 'auth' => 'home#auth'

  resources :users do
    post '/transfer', to: 'users#transfer'
  end
end
