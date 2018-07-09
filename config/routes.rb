Rails.application.routes.draw do

  root 'smoking_areas#index'
  resources :place_registers
  resources :users
  resources :smoking_areas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
