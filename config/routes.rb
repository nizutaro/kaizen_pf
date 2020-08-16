Rails.application.routes.draw do
  
 
  get 'projects/new'
  get 'projects/index'
  get 'projects/show'
  get 'projects/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, onry: [:index,:show,:create,:edit, :update, :destroy] do
    resource :nicetry, only: [:create,:destroy]
  end
  resources :jobs, onry: [:index,:create, :edit, :update, :destroy]
  resources :projects do
    resource :favorite
    resource :flow
    resource :cost
  end
  root 'homes#about'
  get 'homes/inquery'
  get 'jobs/index'

end
