Rails.application.routes.draw do
  
  resources :movies, only: [:index, :new, :create, :show, :edit, :update, :destroy]
#root 'index'
end
