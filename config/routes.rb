Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    authenticated :user do
      root 'categories#index', as: :authenticated_root
    end
    unauthenticated do
      root 'splash_screen#index', as: :unauthenticated_root
    end
  end

  resources :categories, only: %i[index new create show destroy] do
    resources :expenditures, only: %i[index new create show destroy]
  end
end
