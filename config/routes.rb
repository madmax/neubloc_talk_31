Rails.application.routes.draw do
  resources :page_cachings
  resources :action_cachings
  resource :users
end
