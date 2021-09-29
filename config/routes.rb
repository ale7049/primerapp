Rails.application.routes.draw do
  get 'bienvenido/index'
  resources :expedientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: 'expedientes#index'
end
