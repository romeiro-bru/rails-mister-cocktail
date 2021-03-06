Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Defining cocktails#index as home page
  root to: "cocktails#index"

  resources :cocktails, only: [:new, :create, :show, :index, :edit, :update] do
    resources :doses, only: [:new, :create]
  end
end
