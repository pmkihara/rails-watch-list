Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :lists do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[create]
  end
  resources :bookmarks, only: %i[edit update destroy] do
    member do
      get :details
    end
  end
  resources :reviews, only: %i[edit update destroy]
end
