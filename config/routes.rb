Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/show'
  get 'reviews/index'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/show'
  get 'bookings/index'
  get 'spaceships/index'
  get 'spaceships/show'
  devise_for :users
  root to: 'spaceships#index'
  resources :spaceships, only: [:index, :show] do
    resources :bookings, only: [:new, :create, :show, :index]

  end
  resources :bookings, only: [:new, :create] do
    resources :reviews, only: [:new, :create, :show, :index]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
