Rails.application.routes.draw do
  resources :cocktails

  resources :cocktails do
    resources :doses, only: [ :new, :create]
  end

  delete "/doses/:id", to: "doses#destroy"
end
