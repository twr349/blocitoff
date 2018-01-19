Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  
  
  root to: 'users#show'

  
end
