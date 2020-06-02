Rails.application.routes.draw do
  root 'posts#index'

  resource :users do
    resource :sessions, only: [:new, :create, :destroy]
    resources :posts
    resources :comments
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'

  resources :tags
end
