Rails.application.routes.draw do
  devise_for :users
  root 'usertests#index'
  get 'usertests' => 'usertests#index'
end
