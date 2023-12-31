Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only:[:show, :index, :new, :create] do
    resources :bookmarks, only:[:new, :create]
  end
  resources :lists, only:[:destroy]
  resources :bookmarks, only:[:destroy]
end
