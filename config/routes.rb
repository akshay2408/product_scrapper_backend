Rails.application.routes.draw do
  resources :products, only: %i[index show] do 
    post :scrape, on: :collection
  end
end