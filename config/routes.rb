Rails.application.routes.draw do
  root 'home#index'
  resources :home do
    collection { post :import }
  end

end
