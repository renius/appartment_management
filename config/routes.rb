Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: %i[index show]
end
