ProgramTci::Application.routes.draw do
  resources :programs, only: [:index, :show]
  root 'programs#index'
end
