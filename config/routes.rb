Usage::Application.routes.draw do

   
  resources :rx_by_hours
  get "application/index"
  # resources :applications do
  # collection do
  #       get
  #       "rx_h"
  #        end
  #      end

# resources :rx_days_hours
  resources :tx_by_hours

get "tx_by_days/index"
  resources :tx_by_days do
    collection do
        get 'tx_h'
         end
       end
  
  get "rx_by_days/index"
  resources :rx_by_days do
    collection do
        get 'rx_h','rx_days_hours'
         end
       end

  #get "tx_by_day/index"
  get "trygruff/index"
  resources :trygruffs
 
 get "tx_to_dates/index"
  resources :tx_to_dates

get "tx_group_dates/index"
  resources :tx_group_dates

  get "rx_bugs/index"
  resources :rx_bugs

  # get "rx_by_days/index"

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
   root :to => "application#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
