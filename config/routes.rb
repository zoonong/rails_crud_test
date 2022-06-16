Rails.application.routes.draw do
  resources :chlos
  root 'posts#index'
  
  resources :posts
  resources :chloes
end
