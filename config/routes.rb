
  Rails.application.routes.draw do
  resources :food_items
  get 'menu/index'
    get 'contact_us' => 'home#contact_us'
    get 'menu' => 'menu#index'
    root 'home#index'
  end
