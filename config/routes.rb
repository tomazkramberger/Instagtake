Rails.application.routes.draw do
  
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  match '/instagram/download/:id'  => 'instatake#download', via: [:get, :patch], :as => :instagram_download
  
  match '/users/followers' => 'users#followers', via: [:get, :patch], :as => :followers
  match '/users/following' => 'users#following', via: [:get, :patch], :as => :following
  match '/users/instagram(/:id/(/:postid))' => 'users#instauser', via: [:get, :patch], :as => :instauser
  
  match '/instaposts/:id' => 'instatake#index', via: [:get, :patch], :as => :instaposts
  match '/instaposts/tag(/:tag/(/:id))' => 'instatake#getbytag', via: [:get, :patch], :as => :instaposts_getbytag
  match '/search(/:q)' => 'instatake#search', via: [:get, :patch], :as => :instasearch

  get "/instagram/:uid" => redirect{|params,request| "http://instagram.com/?uid=#{params[:uid]}"}, :as => :instagram_profile
  
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  root 'instatake#index'

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
