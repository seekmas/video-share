Rails.application.routes.draw do
  devise_for :users
  resources :media

  post '/comment' => 'media#comment' , :as => :comment_on_media

  root "media#index"
end
