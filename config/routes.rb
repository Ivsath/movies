# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'movies#index'

  # get 'movies' => 'movies#index'
  # get 'movies/new' => 'movies#new'
  # get 'movies/:id' => 'movies#show', as: 'movies'
  # get 'movies/:id/edit' => 'movies#edit', as: 'edit_movie'
  # patch 'movies/:id' => 'movies#update'

  resources :movies do
    resources :reviews
    resources :favorites
  end

  resource :session, only: [:new, :create, :destroy]

  resources :users
  get "signup" => "users#new"
  get "signin" => "sessions#new"

  resources :genres
end
