Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do

    get "/expenses" => "expenses#index"
    post "/expenses" => "expenses#create"
    get "/expenses/:id" => "expenses#show"
    patch "expenses/:id" => "expenses#update"
    delete "/expenses/:id" => "expenses#destroy"


    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/user_groups" => "user_groups#index"
    get "/user_groups/:id" => "user_groups#show"
  end
end