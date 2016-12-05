Rails.application.routes.draw do
  devise_for :podcasts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :podcasts, only: [:index, :show] do
    resources :episodes
  end
end
