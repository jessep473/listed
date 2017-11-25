Rails.application.routes.draw do
  get 'home/listing'

  root to: redirect('/houses')

  devise_for :users
  root to: redirect('/home/listing')
  resources :houses

  resources :users do
    resources :houses
  end

  

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
