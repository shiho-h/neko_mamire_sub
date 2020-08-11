Rails.application.routes.draw do
   devise_for :admins, controllers: {
  sessions: 'admins/sessions'
}
  devise_for :users
  resources :admin_users, only: [:index, :show]
  resources :users, only: [:edit, :update, :show]
  get 'users/mypage' => 'users#mypage'
  get 'users/leave' => 'users#leave'
  resources :cat_images
  get 'cat_images/all' => 'cat_images#all'
  get 'cat_images/rank' => 'cat_images#rank'
  get 'homes/about'
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
