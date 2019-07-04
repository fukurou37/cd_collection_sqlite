Rails.application.routes.draw do
  devise_for :users
  root "cds#index"
  resources :cds do
    resources :reviews, except: :index
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
