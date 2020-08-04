Rails.application.routes.draw do
  root to: "top#index"
  devise_for :users, controllers: {
                       omniauth_callbacks: "omniauth_callbacks",
                     }
end
