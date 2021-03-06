Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :user
  resources :practitioners
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'staticpages#index'
end
