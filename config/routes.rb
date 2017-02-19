Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "/admin" => "devise/sessions#new" # custom path to login/sign_in
  end

  # resources :posts
  resources :posts, path: ''

  root 'posts#index'

  # get ':title' => 'posts#show'
end
