Rails.application.routes.draw do
  get 'home/listing'

  devise_for :users
  root to: redirect('/houses')
  resources :houses

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
