Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users do
    resources :bookings, only: [:show,:new,:create]
    resources :skills, only: [:new, :create]
  end
  resources :skills, only: [:index, :show]
end
