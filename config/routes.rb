Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
 
  resources :users,only: [:show,:index,:edit,:update]do
    get :followe_index, on: :member
    get :follower_index, on: :member
     resource :relationships, only: [:create, :destroy]
  end

  resources :books

end