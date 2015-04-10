Rails.application.routes.draw do
  
  resources :profiles do
    resources :annuals
  end
  
  devise_for :users
  root to: "home#index"
  
  # The get action routes the user to their profile if already registered. 
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  
end
