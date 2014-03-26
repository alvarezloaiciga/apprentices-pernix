ApprenticesPernix::Application.routes.draw do
  root to: 'home#index'

  resources :applicants, only: [:create]
end
