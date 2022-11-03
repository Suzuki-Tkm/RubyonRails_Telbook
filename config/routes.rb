Rails.application.routes.draw do
  root "friends#index"
  resources :friends do
    resources :telephones
  end
  # resources :telephones
end
