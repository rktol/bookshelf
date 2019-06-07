Rails.application.routes.draw do
  get 'sessions/new'
  get 'comics/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'book/read'
  root 'book#read'
  post 'comics/create'
  get'/login',to: 'sessions#new'
  post'sessions/create'
end
