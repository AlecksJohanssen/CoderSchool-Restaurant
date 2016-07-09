
  Rails.application.routes.draw do
  devise_for :users
  resources :orders
  resources :food_items
    resources :order
  get 'menu/index'
    get 'contact_us' => 'home#contact_us'
    get 'menu' => 'menu#index'
    root 'home#index'
  end
