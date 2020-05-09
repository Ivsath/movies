# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'movies#index'

  # get 'movies' => 'movies#index'
  # get 'movies/new' => 'movies#new'
  # get 'movies/:id' => 'movies#show', as: 'movies'
  # get 'movies/:id/edit' => 'movies#edit', as: 'edit_movie'
  # patch 'movies/:id' => 'movies#update'

  resources :movies do
    resources :reviews
  end
end
