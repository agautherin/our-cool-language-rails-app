Rails.application.routes.draw do
  post "letters/:id/addlang", to: "letters#addlang"
  resources :languages, except: [:destroy]
  resources :letters, except: [:destroy]
  resources :languageletters, except: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
