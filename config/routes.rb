Rails.application.routes.draw do
  get 'commandes/index'
  post 'commandes/create', to: 'commandes#create'
  get 'commandes/view', to: 'commandes#view'
  resources :pizzas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
