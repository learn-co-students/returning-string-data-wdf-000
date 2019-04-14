Rails.application.routes.draw do
  resources :posts, except: :destroy
  get '/posts/:id/body', to: 'posts#body'
end
