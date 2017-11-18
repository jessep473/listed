Rails.application.routes.draw do
  devise_for :users
  root to: redirect('/ideas')
  resources :houses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
