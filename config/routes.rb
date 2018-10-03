Rails.application.routes.draw do
  resources :books
  post 'books_filter', action: :index, controller: 'books_filter'
end
