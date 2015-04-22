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
  
  # the get action to route the user to all holidays requests by all users
  get '/allann' => 'annuals#allann'

    # the get action to route the user to all holidays requests by all users
  get '/pending' => 'annuals#pending'
  
    # the get action to route the user to all holidays requests by all users
  get '/approved' => 'annuals#approved'

   # the get action to route the user to all holidays requests by all users
  get '/profiles/:profile_id/annuals/:annuals/:id/pending' => 'annuals#pending'
  
  
  # NOTES
  #  get "/posts" => "posts#index"
  #  get "/posts/:id" => "posts#show"
  #  get "/posts/new" => "posts#new"
  #  post "/posts" => "posts#create"  # usually a submitted form
  #  get "/posts/:id/edit" => "posts#edit"
  #  put "/posts/:id" => "posts#update" # usually a submitted form
  #  delete "/posts/:id" => "posts#destroy"
  
end
