SeatMyself::Application.routes.draw do

  get "users/new"

  resources :restaurants
  resources :users, except: [:index]

  root :to => 'welcome#index'
end
