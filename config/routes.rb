Rails.application.routes.draw do
  resources :page_cachings do
    get 'expire', on: :collection
  end

  resources :action_cachings do
    get 'expire', on: :collection
  end

  resources :fragment_cachings

  resources :teams
  resources :members

  resource :users

  root 'home#index'
end
