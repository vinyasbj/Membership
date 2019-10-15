Rails.application.routes.draw do
  resources :membership_forms
  get '/home' ,to: "membership_forms#home",as: :home
  resources :roles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "membership_forms#home"
end
