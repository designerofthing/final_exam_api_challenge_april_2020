Rails.application.routes.draw do
  get 'comments/create'
  namespace :api do
    resources :articles, only: [:index, :show]
    resources :comments, only: [:create]
  end
end
