Rails.application.routes.draw do
  root to: 'home#index'
  get 'bootstrap', to: 'bootstrap#index'
  get 'tachyons',  to: 'tachyons#index'

  get '*path', to: 'home#index', via: :all
end
