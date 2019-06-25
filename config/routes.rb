Rails.application.routes.draw do
  resources :userreads
  get 'sessions/new'
  get 'comics/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'book/read'
  root 'book#read'
  post 'comics/create'
  get'/login',to: 'sessions#new'
  delete '/logout', to:'sessions#destroy'
  post'sessions/create'

end
