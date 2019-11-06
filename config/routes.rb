Rails.application.routes.draw do
  get 'arquivos/new'
  get 'arquivos/create'
  get 'arquivos/edit'
  get 'arquivos/show'
  get 'arquivos/index'
  get 'arquivos/index'
  get 'arquivos/new'
  get 'arquivos/create'
  get 'arquivos/edit'
  get 'arquivos/show'
  root 'home#index'
  
  resources :arquivos
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
