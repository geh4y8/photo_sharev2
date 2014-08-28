Rails.application.routes.draw do
  get 'sessions/new'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users do
    resources :photos do
      resources :tags
      resources :favorites
    end
  end
  root :to => 'users#show'
  resources :sessions
end
