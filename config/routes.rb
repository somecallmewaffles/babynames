Rails.application.routes.draw do
  resources :votes
  resources :voting_blocks
  resources :baby_names
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
