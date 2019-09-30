Rails.application.routes.draw do
  root 'site#index'
  namespace :v1, defaults: { format: 'json' } do
      get 'site', to: 'site#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cards
  resources :welcome
end
