Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:create]
  end

  delete "/doses/:id", to: "doses#destroy", as: "dose"
end
