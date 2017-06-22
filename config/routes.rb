Rails.application.routes.draw do
  resources :users, only: [:create, :new, :show, :show]
  resource :session, only: [:create, :new, :destroy]

  root to: redirect("/users/new")

end
