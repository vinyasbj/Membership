Rails.application.routes.draw do
  root to: "membership_forms#home"
  get '/form/:id', action: :form, controller: 'membership_forms', to: "membership_forms#form",as: :form
  resources :membership_forms
  get '/home' ,to: "membership_forms#home",as: :home
  resources :roles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
