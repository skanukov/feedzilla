Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'entries#index'

  devise_for :users
  resources :entries
  resources :feeds

  namespace :admin do
    resources :feeds
  end
end
