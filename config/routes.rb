Rails.application.routes.draw do
  
  resources :profiles do
    collection do
      get 'search'
    end
    resources :annuals do
      get 'allann'
    end
  end
  

  
  devise_for :users
  root to: "profiles#index"
  
  # The get action routes the user to their profile if already registered. 
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  
  get '/allann' => 'annuals#allann'
  
  
  
  # NOTES
  #  get "/posts" => "posts#index"
  #  get "/posts/:id" => "posts#show"
  #  get "/posts/new" => "posts#new"
  #  post "/posts" => "posts#create"  # usually a submitted form
  #  get "/posts/:id/edit" => "posts#edit"
  #  put "/posts/:id" => "posts#update" # usually a submitted form
  #  delete "/posts/:id" => "posts#destroy"
  
end
