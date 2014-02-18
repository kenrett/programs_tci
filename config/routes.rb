ProgramTci::Application.routes.draw do
  resources :programs, except: [:update, :create]
  root 'programs#index'
end
