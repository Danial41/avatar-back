Rails.application.routes.draw do
  resources :users do
    resources :experiences
    resources :educations
  end
  resources :projects
  resources :news
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
