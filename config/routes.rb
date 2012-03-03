Habits::Application.routes.draw do

  resources :recipes
  resources :habits

  root :to => "application#index"

  # OmniAuth
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

end
