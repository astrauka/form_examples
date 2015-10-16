Rails.application.routes.draw do
  resource :forms, only: [:index]
  root 'forms#index'
end
