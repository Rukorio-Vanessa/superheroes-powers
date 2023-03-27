Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #Heroes
  get '/heros', to: 'heros#index'
  get '/heros/:id', to: 'heros#show'

  #Powers
  get '/powers', to: 'powers#index'
  get '/powers/:id', to: 'powers#show'
  patch '/powers/:id', to: 'powers#update'
end
