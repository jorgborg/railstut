Rails.application.routes.draw do
  match "/index" => 'website_core#index', via: :get
# These map get request for the URI "my_core/index" to the "index" action of the "myCore" controller



# changes the routes
# these factor out the links into a nav bar
# for this URL, match onto these controller actions, the __ actions on the my_core controller 
# and do with and only with a get request

# this is a change in Rails 4 vs Rails 3.2
# where the match statements apply to all the http verbs - a little too relaxed
# want to control which http verbs we are using


  match "/shop" => 'website_core#shop', via: :get

  match "/discussion" => 'website_core#discussion', via: :get
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  root 'website_core#index'
  # JJ-this makes us go directly to the index page whenever we land on the web application
  # this are RESTful routes
  # for static pages we are just using get request

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
