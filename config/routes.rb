Rails.application.routes.draw do
  resources :empathy_map_records
  resources :empathy_maps

  devise_for :users
  resources :users
  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}, controllers: { registrations: "user_registrations" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "empathy_map_records#index"

  # devise_for :users
  # resources :users

end
