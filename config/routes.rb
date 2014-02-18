ProgramTci::Application.routes.draw do
  resources :programs
  root 'programs#index'
end
