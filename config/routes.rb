ProgramTci::Application.routes.draw do
  resources :programs, except: [:destroy, :update, :create]
  root 'programs#index'
end
