Rails.application.routes.draw do
  root to: 'pages#home'

  get 'home', to: 'pages#home_2'
  get 'diffbot_scrapper', to: 'pages#page'
  get 'webapp_scrapper', to: 'pages#scrapper'
  # For details on 11the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
