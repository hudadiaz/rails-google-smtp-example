Rails.application.routes.draw do
  resources :emails, except: [:edit, :destroy]
  root to: 'emails#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
