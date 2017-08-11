Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root "cocktails#index"
  resources :cocktails, only: [:show, :new, :create], shallow: true do
    resources :doses, only: [:create, :destroy]
    resources :reviews, only: [:create]
  end
end
