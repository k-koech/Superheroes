Rails.application.routes.draw do
  namespace :api do 
    get '/', to: "root#index"
    resources :hero_powers, only: [:create]
    resources :powers, only: [:index, :show, :update]
    resources :heroes, controller: "heros", only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

end
