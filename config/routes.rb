Rails.application.routes.draw do
  resources :posts, except: [:new, :edit, :destroy]
end
