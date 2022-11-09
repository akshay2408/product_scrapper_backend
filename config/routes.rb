require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  resources :products, only: %i[index show] do 
    post :scrape, on: :collection
  end
end
