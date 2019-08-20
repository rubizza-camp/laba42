# frozen_string_literal: true

# rubocop:disable Layout/SpaceInsideHashLiteralBraces
Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'home#index'

  resources :projects
  resource :profile, controller: 'profile', only: %i[edit update] do
    post 'update_role'
    post 'update'
    get 'edit_role'
    get 'customer_setup_info'
    get 'developer_setup_info'
  end
end
# rubocop:enable Layout/SpaceInsideHashLiteralBraces
