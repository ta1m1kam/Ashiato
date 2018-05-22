Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  root to: 'home#top'
  get 'home/about', as: :about
  get 'home/contact', as: :contact
end
