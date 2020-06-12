Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'api/v1/animals/random'
  get 'api/v1/animals/search'
  get 'api/v1/animals/new_faces'

  namespace :api do
    namespace :v1 do
      resources :animals
    end
  end

  root to: 'api/v1/animals#index'
end
