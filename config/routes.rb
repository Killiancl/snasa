Rails.application.routes.draw do
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
