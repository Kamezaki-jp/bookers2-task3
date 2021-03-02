Rails.application.routes.draw do

  devise_for :users
  root to: 'home#top'
  get 'home/about'

  resources :users
  resources :books do
    resource   :favorites,     only: [:create, :destroy]
    resource   :book_comments, only: [:create, :destroy]
  end

end
