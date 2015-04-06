Rails.application.routes.draw do
  
  resources :profiles do
    resources :annuals
  end
  
  devise_for :users
  root to: "home#index"
  
end
