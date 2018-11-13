Rails.application.routes.draw do
  resources :events
  post 'daily_status/create'
  get 'daily_status/show'
  get 'daily_status/', to: 'daily_status#index'
  post 'daily_status/update'
  delete 'daily_status/delete/:id', to: 'daily_status#delete'
  resources :users, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
