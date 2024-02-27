Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "languages#index"

  # Defines the languages resource routes
  resources :languages
end