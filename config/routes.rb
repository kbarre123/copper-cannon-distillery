Bootstrap::Application.routes.draw do
  
  get '/about' => 'high_voltage/pages#show', id: 'about'
  get '/events' => 'high_voltage/pages#show', id: 'events'
  get '/press' => 'high_voltage/pages#show', id: 'press'
  get '/gallery' => 'high_voltage/pages#show', id: 'gallery'
  get '/privacy' => 'high_voltage/pages#show', id: 'privacy'
  get '/products' => 'high_voltage/pages#show', id: 'products'
  get '/terms' => 'high_voltage/pages#show', id: 'terms'
  get '/tours' => 'high_voltage/pages#show', id: 'tours'
  
  # Clicking on contacts in nav brings you to /views/contacts/new
  resources :contacts, only: [:new, :create]  
  
  # Redirect url/home to url
  get '/home', to: redirect('/')
  
  # Sets root to /home (but shows the url w/o '/home' per redirect above
  root :to => 'high_voltage/pages#show', id: 'home'

  
end
