Rails.application.routes.draw do
  get 'pages/home'
  get 'about', to:"pages#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :articles, only: [:show,:index, :new, :create, :edit, :update]
  root "pages#home"
  resources :articles

  get "signup", to:"users#new"

  resources :users, except: [:new]


end
