Rails.application.routes.draw do
  namespace :backoffice do
    get 'dashboard/index'
    resources :users, except: [:show]
  end
  get 'backoffice', to: 'backoffice/dashboard#index'
  get 'home/index'
  root 'home#index'
  devise_for :users
  devise_for :admins, controllers: { sessions: 'admins/sessions' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
