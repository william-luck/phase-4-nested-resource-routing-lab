Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show] do
    # GET /users/:user_id/items
    # GET /users/:user_id/items/:id
    # POST /users/:user_id/items
    resources :items, only: [:index, :show, :create]
  end
end
