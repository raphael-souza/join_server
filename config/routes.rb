Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#index'




  # namespace :api, defaults: { format: :json } do
  #   resources :users
  #   resources :collects
  #   resources :deliverymen
  #   resources :orders do 
  #     collection do
  #       post :request_withdrawal
  #     end
  #   end
  # end

  # namespace :bot do
  #   resources :messages do 
  #     collection do
  #       post :bot, defaults: {format: :xml }
  #     end
  #   end
  # end
  
  # devise_for :users,
    # defaults: { format: :json },
    # path: '',
    # path_names: {
    #   sign_in: 'api/login',
    #   sign_out: 'api/logout',
    #   registration: 'api/signup'
    # },
    # controllers: {
    #   sessions: 'sessions',
    #   registrations: 'registrations'
    # }
end
