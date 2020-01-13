Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    post "/sessions" => "sessions#create"

    get "/activities" => "activities#index"

    post "/activity_users" => "activity_users#create"
    delete "/activity_users/:id" => "activity_users#destroy"

    get "/challenges" => "challenges#index"
    post "/challenges" => "challenges#create"
    get "/challenges/:id" => "challenges#show"
  end
end
