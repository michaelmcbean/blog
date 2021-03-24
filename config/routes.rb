Rails.application.routes.draw do
    devise_scope :user do
        root to: "devise/sessions#new"
    end

    devise_for :users, controllers: { sessions: "users/sessions" }

    resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
