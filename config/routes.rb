Rails.application.routes.draw do
  get 'splash_screen/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splash_screen#index"
end
