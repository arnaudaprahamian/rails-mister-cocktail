Rails.application.routes.draw do
  root "cocktails#index"
  resources :cocktails, only: [:show, :new, :create], shallow: true do
    resources :doses, only: [:create, :destroy]
  end
end
