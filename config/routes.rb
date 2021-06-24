Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  root "stations#index"
  resources :stations, only: [:index, :show]
end
