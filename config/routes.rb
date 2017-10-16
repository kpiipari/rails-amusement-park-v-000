Rails.application.routes.draw do

    root 'welcome#home'
    resources :users

    get '/signin', to: 'sessions#new'
    post '/signin', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'

    get '/attractions', to: 'attractions#index'
    get '/attractions/new', to: 'attractions#new'
    post '/attractions', to: 'attractions#create'
    get '/attractions/:id', to: 'attractions#show', as: 'attraction'
    get '/attractions/:id/edit', to: 'attractions#edit', as: 'edit_attraction'
    patch '/attractions/:id', to: 'attractions#update'

    get '/rides/new', to: 'rides#new'
    post '/rides/new', to: 'rides#create'

end