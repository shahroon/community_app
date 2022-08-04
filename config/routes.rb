Rails.application.routes.draw do
  devise_scope :user do
    # Re-directs signing out user back to sign in
    get "users", to: "devise/sessions#new"
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "groups#index"
end
