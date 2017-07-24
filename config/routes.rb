Rails.application.routes.draw do
  resources :tourneys
  root to: "events#index"
  
end
