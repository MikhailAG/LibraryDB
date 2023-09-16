Rails.application.routes.draw do
  get 'authors' => 'authors#index'

  resources :books do
    resources :book_copies, only: [:new, :create]
    post 'upload_cover', on: :collection
  end
  resources :authors do
    post 'upload_photo', on: :collection
  end

  resources :books
  resources :authors
  resources :genres

  resources :readers do
    resources :reservations, only: [:index, :new, :create]
  end

  resources :reservations, only: [:show, :update, :destroy]

  resources :book_copies do
    resources :reservations, only: [:index, :show]
  end

  root 'books#index'
end
