Rails.application.routes.draw do
   devise_for :admins, controllers: {
  sessions: 'admins/sessions'
}
  devise_for :users
  resources :admin_users, only: [:index, :show]
  resources :users, only: [:edit, :update, :show] do
  get 'mypage' , :on => :member
  get 'users/leave' => 'users#leave'
end
  get 'cat_images/all' => 'cat_images#all'
  get 'cat_images/rank' => 'cat_images#rank'
  resources :cat_images do
  	resource :favorites, only: [:create, :destroy]
  	resources :comments, only: [:create, :destroy]
  end
  get 'homes/about'
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
