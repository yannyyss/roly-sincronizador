Roly::Application.routes.draw do
  get "admin/search_preferences"

  get "admin/privacy_preferences"

  get "admin/account"

  get "admin/edit_account"
  match "/admin/switch_user/:user_id" => "admin#switch_user"
  
  match "app_info" => "admin#app_info"
  
  # my businesses
  match '/businesses/view/:business_id' => "businesses#view_business"
  match '/businesses/add/:business_id' => "businesses#add"
  match '/businesses/new' => "businesses#new"
  match "/businesses/my" => "businesses#show"
  
  # my roly cards
  match '/my_roly_cards/view/:roly_id' => "my_roly_cards#view"
  match '/my_roly_cards/edit/:roly_id' => "my_roly_cards#edit"
  match '/my_roly_cards/new' => "my_roly_cards#new"
  match "/my_roly_cards/my" => "my_roly_cards#show"
  match "/my_roly_cards/share/:roly_id" => "my_roly_cards#share"
  
  # album controller
  match '/albums/edit/:album_id' => "albums#edit_album"
  match '/albums/view/:album_id' => "albums#view_album"
  match '/albums/add/:album_id' => "albums#add"
  match '/albums/new' => "albums#new"
  match "/albums/my" => "albums#show"
  match "/albums/favorites" => "albums#favorite"
  match "/albums/recent" => "albums#recent"
  match "/albums/recently_added" => "albums#recently_added"
  match "/albums/today" => "albums#today"
  
  # roly cards  

  match '/r/cbc/:share_code' => "roly#card_by_code"
  match '/roly/card_by_location/:share_code' => "roly#get_card"
  match '/roly/get_card' => "roly#get_card"
  match '/roly/:roly_id' => "roly#detail"
  match '/roly/share/:roly_id' => "roly#share"

  get "roly/search"

  get "roly/detail"

  get "roly/map"

  # roly share 
  match '/qr' => "roly#qrcode"
  match '/' => "albums#recent"


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
