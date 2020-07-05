Rails.application.routes.draw do
  root 'toppage#index'
  get 'index', to: 'toppage#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
