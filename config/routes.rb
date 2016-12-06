Rails.application.routes.draw do
  devise_for :podcasts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :podcasts, only: [:index, :show] do
    resources :episodes
  end

  authenticated :podcast do
    root 'podcasts#dashboard', as: "authenticated_root"
  end

  root 'welcome#index'

end
