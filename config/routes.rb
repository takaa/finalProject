Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}
  root 'usertests#index'
  resources :usertests do  #usertests_controllerに対してのresourcesメソッド
    resources :comments, only: [:create]
  end
  resources :users, only: [:show] #users_controllerに対してのresourcesメソッド
end
