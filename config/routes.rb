Rails.application.routes.draw do
  root to: 'home#top'
  get 'home/about', as: :about
  get 'home/contact', as: :contact

  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources :users
  get '/users/sign_out' => 'devise/sessions#destroy'

end
