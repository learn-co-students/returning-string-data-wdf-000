Rails.application.routes.draw do
  resources :posts
  get '/posts/:id/body', to: 'posts#body'
end
