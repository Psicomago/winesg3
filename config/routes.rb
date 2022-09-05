Rails.application.routes.draw do
  resources :wine_oenologists
  resources :oenologists
  root to: 'home#index'
  resources :strain_wines
  resources :strains
  resources :wines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

