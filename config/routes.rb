Rails.application.routes.draw do
  root to: 'pages#home'
  get 'webapp', to: 'pages#page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
