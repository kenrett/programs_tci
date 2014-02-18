ProgramTci::Application.routes.draw do
  resources :programs, except: [:update]
  root 'programs#index'
end
