Rails.application.routes.draw do
  mount ImageUploader::UploadEndpoint => "/images/upload"
  resources :avatars
  namespace :admin do
    resources :users
    resources :charges

    root to: "users#index"
  end

  mount StripeEvent::Engine, at: '/stripe/webhook'

  if ActiveRecord::Base.connection.data_source_exists? 'users'
    devise_for :users, path: "",
      path_names: { sign_in: "login", sign_out: "logout", registration: "profile" },
      controllers: { registrations: "users/registrations" } #, sessions: "users/sessions", passwords: "users/passwords" }
  end

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
