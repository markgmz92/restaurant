Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :restaurants  do
        resources :dishes
      end
      resources :dishes do
        resources :restaurants
      end
    end
  end
end
