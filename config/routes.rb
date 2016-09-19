Rails.application.routes.draw do
  namespace :admin do
    resources :users

    root to: "users#index"
  end

  mount StripeEvent::Engine, at: '/stripe/webhook'

  devise_for :users

  # marketing pages
  root "pages#index"
  get 'features', to: 'pages#features'
  get 'pricing', to: 'pages#pricing'
  get 'about', to: 'pages#about'

  # App pages
  get 'app', to: 'pages#subscribed'
  resource :subscription, path: 'billing'
  resource :card
  resources :charges

  get 'hello_world', to: 'hello_world#index'
end
