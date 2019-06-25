Rails.application.routes.draw do
  root 'pages#home'
  resources :userreads
  get 'sessions/new'
  get 'comics/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/read', to: 'book#read'
  post 'comics/create'
  get'/login',to: 'sessions#new'
  delete '/logout', to:'sessions#destroy'
  post'sessions/create'

end
