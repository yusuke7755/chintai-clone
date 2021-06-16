Rails.application.routes.draw do
  resources :chintais
  root 'chintais#index'
end
