Rails.application.routes.draw do
  root 'user#index'
  resources :user, only: [:new, :create, :create_form]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
