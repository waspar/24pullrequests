Tfpullrequests::Application.routes.draw do
  get '/404', :to => 'errors#not_found'
  get '/422', :to => 'errors#unprocessable'
  get '/500', :to => 'errors#internal'

  resources :gifts
  resources :users
  resources :projects, :only => [:index, :new, :create]
  resources :pull_requests, :only => [:index]
  resource  :dashboard do 
    member do
      get :delete
      delete :destroy
    end
  end
  resource  :pull_request_download, :only => :create

  get '/preferences', :to => 'dashboards#preferences', :as => 'preferences'
  patch '/preferences/update', :to => 'dashboards#update_preferences', :as => 'update_preferences'

  get '/login',  :to => 'sessions#new',     :as => 'login'
  get '/logout', :to => 'sessions#destroy', :as => 'logout'

  post '/auth/twitter/callback',   :to => 'twitter#authorize'
  delete '/twitter/remove',         :to => 'twitter#remove'

  match '/auth/:provider/callback', :to => 'sessions#create', :via => [:get, :post]
  post '/auth/failure',            :to => 'sessions#failure'

  get 'about', :to => 'static#about'
  get 'api', :to => 'static#api'
  get 'contributing', :to => 'static#contributing'

  root :to => 'static#homepage'

  get '/email' => redirect('/preferences') # old preferences URL

  get '/:id' => redirect('/users/%{id}') # User public vanity url, must be lowest priority
end
