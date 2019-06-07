Rails.application.routes.draw do
  get 'comics/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'book/read'
  root 'book#read'
  post 'comics/create'
end
