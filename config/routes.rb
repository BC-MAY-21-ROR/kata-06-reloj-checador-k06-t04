Rails.application.routes.draw do
  resources :admins
  resources :employees
  root  "employees#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/admins", to: "admins#index"
end
