Rails.application.routes.draw do
  resources :position_activities
  resources :employee_positions
  resources :employees
  resources :positions
  resources :activities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
