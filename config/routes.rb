Rails.application.routes.draw do
  get 'rides/take_ride'
  get 'users/mood'
  get 'attractions/take_ride'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :attractions
  resources :rides
  resources :users

end
