Rails.application.routes.draw do
  resources :offers
  resources :categories
  resources :vinyls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  devise_for :users

end
