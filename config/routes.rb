Rails.application.routes.draw do
  devise_for :users, class_name: "User", module: :devise
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/links" => 'links#create'

  get "/:lookup_code" => "links#show"

  get "/user/admin" => 'admin#index'
  get "/user/admin/allusers" => 'users#allusers'
  get "/user/admin/alllinks" => 'links#alllinks'
end
