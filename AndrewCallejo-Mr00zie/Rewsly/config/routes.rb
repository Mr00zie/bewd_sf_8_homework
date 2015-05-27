Rails.application.routes.draw do
 
get '/search' => 'story#search'

resources :story, only: [:index, :new, :create, :show, :update, :edit]
 

end
