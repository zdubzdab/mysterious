# require 'api_constraints'

Mysterious::Application.routes.draw do
  devise_for :users
  # namespace :api, defaults: { format: :json },
  #                             constraints: { subdomain: 'api' }, path: '/'  do
  #   scope module: :v1,
  #             constraints: ApiConstraints.new(version: 1, default: true) do
  namespace :api, format: :json  do
    namespace :v1 do
      resources :users
      resources :sessions, :only => [:create, :destroy]
    end
  end
end
