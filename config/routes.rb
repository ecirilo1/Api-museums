Rails.application.routes.draw do
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'museums', to: 'museums#search'
    end
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
