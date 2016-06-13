Rails.application.routes.draw do
  resources :api_keys, only: [:create, :index, :destroy]
  resources :artworks

  namespace :api do
    namespace :v1 do
      resources :artworks, only: [:index, :show, :update]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
