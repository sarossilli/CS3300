Rails.application.routes.draw do
  root to: 'posts#index'
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
