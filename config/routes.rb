# == Route Map
#
#      Prefix Verb   URI Pattern               Controller#Action
#       users GET    /users(.:format)          users#index
#             POST   /users(.:format)          users#create
#    new_user GET    /users/new(.:format)      users#new
#   edit_user GET    /users/:id/edit(.:format) users#edit
#        user GET    /users/:id(.:format)      users#show
#             PATCH  /users/:id(.:format)      users#update
#             PUT    /users/:id(.:format)      users#update
#             DELETE /users/:id(.:format)      users#destroy
#        root GET    /                         welcome_page#index
#      signup GET    /signup(.:format)         welcome_page#signup
# users_index GET    /users/index(.:format)    users#index
#       login GET    /login(.:format)          session#index
# session_new GET    /session/new(.:format)    session#new
#             POST   /login(.:format)          session#create
#      logout DELETE /logout(.:format)         session#destroy
#

Rails.application.routes.draw do

  resources :questions
  resources :tags
  resources :filters
  resources :users

  root 'welcome_page#index'

  get 'signup' => 'welcome_page#signup'

  get 'users/index'

  get 'login' => 'session#index'

  get 'session/new'

 # get 'session/ask'

  post 'login' => 'session#create'

  post 'show' => 'questions#show'

  get 'outgoing' => 'questions#outgoing'

 # post 'submit' => 'ask_question#create'

 # get 'ask' => 'ask_question#ask'

 get 'ask' => 'questions#new'
 
  delete 'logout' => 'session#destroy'
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
