Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 root to: "home#guestfeed"
 get 'discover', to: 'home#discover'
 get 'login', to: 'home#login'
 get 'signin', to: 'home#signin'
 resources :users ,except: [:index, :destroy] do
   member do
     get 'profile', to: 'home#profile'
  end
  resource :photos
  resource :albums
 end
 namespace :admin do
   resources :users, shallow: true
 end
end
