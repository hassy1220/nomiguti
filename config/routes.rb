Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  get 'homes/about',as:"about"
  resources:users,only:[:show,:index,:edit,:update]
  resources:posts,only:[:new,:create,:show,:index,:edit,:update] do
    resources:comments,only:[:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
