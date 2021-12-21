Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  get 'about' => 'homes#about'

  resources :users, only: [:index, :show, :edit, :update] do
  resources :books, only: [:new, :create]
  end
end
