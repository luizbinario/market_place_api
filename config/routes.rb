Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #     get 'tokens/create'
  #   end
  # end
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:show, :create, :update, :destroy]
      resources :tokens, only: [:create]
      resources :products, only: [:index, :show, :create, :update, :destroy]
      # ou - resources :products
    end
  end
end
