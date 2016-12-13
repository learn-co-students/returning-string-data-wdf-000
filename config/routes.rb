Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # patch "posts/:id", to: "posts#edit"

  get "/posts/:id/body", to: "posts#body"
end
