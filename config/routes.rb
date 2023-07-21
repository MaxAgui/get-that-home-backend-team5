Rails.application.routes.draw do
  resources :interactions
  resources :properties
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post    '/login'    => 'sessions#create'
  delete  '/logout'   => 'sessions#destroy'
  post    '/signup'   => 'users#create'

  post    '/favorites/:id'   => 'interactions#create_favorite'
  patch    '/favorites/:id'   => 'interactions#update_favorite'
  get   '/favorites'   => 'interactions#index_favorite'
  delete '/favorites/:id'  => 'interactions#delete_favorite'

  post '/contacted/:id' => 'interactions#create_contacted'
  get '/contacted' => 'interactions#index_contacted'

  get '/actived' => 'interactions#index_actived'
  patch  '/actived/:id' => 'interactions#update_actived'
  delete '/actived/:id'  => 'interactions#delete_favorite'

  get '/closed' => 'interactions#index_closed'
  

end
