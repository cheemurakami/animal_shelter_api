Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'animals/random'
  resources :animals
  root to: 'animals#index'
end
