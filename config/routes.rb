Rails.application.routes.draw do
  scope '/api/v1' do
    resources :welcome
    resources :cards
    resources :users
    resources :pictures
    resources :profile
    resources :scoreboard
  end
end
