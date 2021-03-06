Rails.application.routes.draw do

  # Need to modify these to only create routes that I need
  resources :users
  resources :teams
  resources :players
  resources :team_players

  root to: 'main#index'

  get '/teams/:id/delete' => 'teams#delete'

  get '/users/:id/delete' => 'users#delete'

  get '/logout' => 'auth#logout'

  get '/login' => 'auth#login'
  
  get '/teams/new/add_player' => 'teams#add_player'

  get '/callback' => 'auth#callback' #Rename these later

  post '/login' => 'auth#signin'

  put '/teams/:id/vote' => 'teams#vote'

  put '/teams/:id/add_player' => 'team_players#add_player'

  delete '/teams/:id/delete_player' => 'team_players#release_player'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
