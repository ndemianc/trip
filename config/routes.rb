require 'api_constraints'

Rails.application.routes.draw do

  namespace :api do
  namespace :v1 do
    get 'comments/index'
    end
  end

  namespace :api do
  namespace :v1 do
    get 'comments/show'
    end
  end

  namespace :api do
  namespace :v1 do
    get 'comments/create'
    end
  end

  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do

      resources :comments
    end
  end
end
