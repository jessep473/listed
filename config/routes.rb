Rails.application.routes.draw do
  get 'pages/start'

  resources :customizes
  get 'home/listing'
  get 'houses/home'

  root to: redirect('/pages/start')

  devise_for :users
  root to: redirect('/home/listing')
  resources :houses

  resources :users do
    resources :houses
  end

  

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
