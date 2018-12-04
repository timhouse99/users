Rails.application.routes.draw do
  resources :user_accounts_groups
  resources :user_accounts_people
  resources :groups
  resources :user_accounts
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'application#hello'

end
