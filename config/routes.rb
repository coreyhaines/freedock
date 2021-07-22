Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  get "/about" => "pages#about"

  root "stations#index"
  resources :stations, only: [:index, :show]
  resources :programs, only: [:index]
end
