Rails.application.routes.draw do
  devise_for :users
  resources :entries
  resources :feeds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'entries#index'
end
