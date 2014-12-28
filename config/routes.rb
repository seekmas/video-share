Rails.application.routes.draw do
  devise_for :users
  resources :media
  resources :statuses

  post '/comment' => 'media#comment' , :as => :comment_on_media

  get '/framework7' => 'framework#index' , :as => :framework
  get '/framework7/about' => 'framework#about' , :as => :framework_about

  root "media#index"
end
