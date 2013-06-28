SeatMyself::Application.routes.draw do

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  get "users/new"

  resources :restaurants
  resources :users, except: [:index]
  resource  :session, :only => [:new, :create, :destroy]

  root :to => 'welcome#index'
end
