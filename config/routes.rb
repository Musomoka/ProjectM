Rails.application.routes.draw do

  resources :companies do
    resources :projects
  end
  root "companies#index"
end
