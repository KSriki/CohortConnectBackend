Rails.application.routes.draw do
  get 'daily_status/create'
  get 'daily_status/show'
  get 'daily_status/edit'
  resources :users, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
