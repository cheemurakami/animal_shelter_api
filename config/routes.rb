Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'animals/random'
  get 'animals/search'
  resources :animals
  root to: 'animals#index'
end
