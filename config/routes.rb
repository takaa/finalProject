Rails.application.routes.draw do
  devise_for :users
  root 'usertests#index'
  get 'usertests' => 'usertests#index' #ユーザテスト一覧
  get 'usertests/new' => 'usertests#new' #ユーザテスト投稿画面
  post 'usertests' => 'usertests#create' #ユーザテスト投稿機能
  get 'users/:id' => 'users#show' #mypageへのルーティング
end
