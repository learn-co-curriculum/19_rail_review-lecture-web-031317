Rails.application.routes.draw do

  root to: 'courses#index'

  get '/courses', to: 'courses#index', as: 'courses'
  get '/courses/something_else', to: 'courses#something_else'
  get '/courses/new', to: 'courses#new', as: 'new_course'
  get '/courses/:id', to: 'courses#show', as: 'course'
  post '/courses', to: 'courses#create'
  get '/courses/:id/edit', to: 'courses#edit', as: 'edit_course'
  patch '/courses/:id', to: 'courses#update'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  #resources :courses, only: [:index]

  resources :users, only: [:new, :create]

  # The following is defined by resources
  # index
  # get '/students', to: 'students#index', as: 'students'
  # # new
  # get '/students/new', to: 'students#new'
  # #show
  # get '/students/:id', to: 'students#show', as: 'student'
  # #edit
  # get '/students/:id/edit', to: 'students#edit'
  # # create
  # post '/students', to: 'students#create'
  # # update
  # patch '/students/:id', to: 'students#update'
  # # delete
  # delete '/students/:id', to: 'students#destroy'


end
