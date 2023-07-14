# : true

# : true

# : true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'splash_screen#index'
  resources :categories, only: %i[index new create show destroy] do
    resources :expenditures, only: %i[index new create show destroy]
  end
end
