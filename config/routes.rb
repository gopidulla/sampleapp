Rails.application.routes.draw do
  resources :complaints
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'welcome/index'


 devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }
   authenticated :user do
    root :to => 'complaints#index', as: :authenticated_root
  end

  root :to => 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
