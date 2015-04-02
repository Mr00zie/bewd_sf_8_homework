Rails.application.routes.draw do
  # root 'movie#index'
  
  # get 'movie' => 'movie#index'
  # get 'movie/new' => 'movie#new'
  # post 'movie' => 'movie#create'
  get '/search' => 'movie#search'

  resources :movie, only: [:index, :new, :create, :show, :edit, :update]


  
  #if you just leave class movie it will show all 7 Actions..this is specific need only 1

  #             POST /book(.:format)          book#create..standard way insert into database
  #  new_book GET    /book/new(.:format)      book#new..forms
  # edit_book GET    /book/:id/edit(.:format) book#edit
  #      book GET    /book/:id(.:format)      book#show
  #           PATCH  /book/:id(.:format)      book#update
  #           PUT    /book/:id(.:format)      book#update
  #           DELETE /book/:id(.:format)      book#destroy  






  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root '#index'

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
