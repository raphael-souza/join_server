require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users,
    defaults: { format: :json },
    path: '',
    path_names: {
      sign_in: 'api/login',
      sign_out: 'api/logout',
      registration: 'api/signup'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
  }
  
  get 'conversations/messages'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'

  root 'welcome#index'

  mount Sidekiq::Web => '/sidekiq'

  resources :conversations, only: [:index, :create]
  resources :messages
  # resources :users, only: [:index, :create]
  resources :move_players, only: [:create]

end
