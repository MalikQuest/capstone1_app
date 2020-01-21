Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/sessions" => "sessions#create"

    get "/activities" => "activities#index"
    get "/activities/:id" => "activities#show"

    post "/activity_users" => "activity_users#create"
    delete "/activity_users/:id" => "activity_users#destroy"
    post "/activity_users/multiple" => "activity_users#set_multiple"

    get "/challenges" => "challenges#index"
    post "/challenges" => "challenges#create"
    get "/challenges/:id" => "challenges#show"

    post "/challenge_users" => "challenge_users#create"
  end
end
