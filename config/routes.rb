Rails.application.routes.draw do
  devise_for :users
  root 'usertests#index'
  resources :usertests do  #usertests_controllerに対してのresourcesメソッド
    resources :comments, only: [:create]
  end
  resources :users, only: [:show] #users_controllerに対してのresourcesメソッド
end
