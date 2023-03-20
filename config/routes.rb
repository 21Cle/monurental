Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :monuments, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: :show do
    member do
      patch :accept
      patch :decline
    end
  end
  get 'dashboard', to: 'pages#dashboard'
end
