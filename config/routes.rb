Bootstrap::Application.routes.draw do
  
  # ROUTES FOR STATIC PAGES
  get '/about' => 'high_voltage/pages#show', id: 'about'
  get '/events' => 'high_voltage/pages#show', id: 'events'
  get '/press' => 'high_voltage/pages#show', id: 'press'
  get '/gallery' => 'high_voltage/pages#show', id: 'gallery'
  get '/privacy' => 'high_voltage/pages#show', id: 'privacy'
  get '/products' => 'high_voltage/pages#show', id: 'products'
  get '/terms' => 'high_voltage/pages#show', id: 'terms'
  get '/tours' => 'high_voltage/pages#show', id: 'tours'
  
  # ROUTES FOR MVC PAGES
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new]
  resources :subscribers, only: [:new, :create]
  
  # Set root using MVC instead of static /home page.
  root to: 'visitors#new'
  
  # REDIRECTS
  # Redirect http://url/home to http://url
  get '/home', to: redirect('/')
  
  #CYA OLD ROUTES
  # Sets root to /home
  # root :to => 'high_voltage/pages#show', id: 'home'
  
end
