Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flights, only: [:index, :show] do
    resources :bookings, only: [:new, :create] 
  end
  
  resources :bookings, only: [:show]
  root 'flights#index'
end
