Rentalutions::Application.routes.draw do

  resources :launchsubscribers

  root :to => 'launchsubscribers#new', :as => :home

end
