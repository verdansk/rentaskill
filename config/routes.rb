Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :skills do
    resources :bookings, only: [:new,:create]
    collection do
      get "search"
    end
  end
  resources :users, only: [:show,:index]  do
    resources :reviews, only: [:new, :create]
  end
  get "skills/category/:category", to: "skills#category", as: :skills_category
  get "bookings/accept/:id", to: "bookings#accept", as: :accept_booking
  get "bookings/decline/:id", to: "bookings#decline", as: :decline_booking
end
