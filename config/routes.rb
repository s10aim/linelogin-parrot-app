Rails.application.routes.draw do
  get "top/index"

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  devise_for :users, controllers: {
                       omniauth_callbacks: "omniauth_callbacks",
                     }
end
