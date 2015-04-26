Rails.application.routes.draw do

  root 'places#index'

  get '/places' => 'places#index', :as => 'index'
  get '/places/new' => 'places#new', :as => 'create'
  
  post '/places' => 'places#submitted'

  get '/places/:id' => 'places#show' ,:as => 'place'
  
  delete '/places/:id' => 'places#delete'

  get '/places/:id/edit' => 'places#edit', :as => 'edit'
  
  patch '/places/:id' => 'places#update'

  post '/reviews/:place_id' => 'reviews#create', :as => 'reviews'

end
