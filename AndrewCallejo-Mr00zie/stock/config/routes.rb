Rails.application.routes.draw do
 

devise_for :users
resources :stock, only: [:new, :index, :show, :edit, :update, :create]
#match 'auth/:provider/callback', to: ''

end
