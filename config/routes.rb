BogApp::Application.routes.draw do
  
  root to: "creatures#index"
  
  get "/creatures", to: "creatures#index"

  get "/creatures/view_all", to: "creatures#view_all"

  #create a route for making a new creature
  get "/creatures/new", to: "creatures#new"

  get "/creatures/:id", to: "creatures#show"

  post "/creatures", to: "creatures#create"

  get "/creatures/:id/edit", to: "creatures#edit"

  post "/creatures/:id/delete", to: "creatures#delete"

  put "/creatures/:id", to: "creatures#update"

end
