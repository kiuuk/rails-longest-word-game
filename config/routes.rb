Rails.application.routes.draw do
  # get 'games/new'
  # get 'games/score'

  get 'new', to: 'games#new', as: :new
  post 'score', to: 'games#score', as: :score
  # post 'word', to: 'games#score'

  root to: 'games#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

