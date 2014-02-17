ProgramTci::Application.routes.draw do
  resources :programs, only: [:index, :show, :new]
  root 'programs#index'
end
