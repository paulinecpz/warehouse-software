Rails.application.routes.draw do
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  resources :products do
    resources :variants
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
