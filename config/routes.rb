Rails.application.routes.draw do
  resources :students, only: :index
  get '/student/new', to: 'students#new'
  get '/student/:id', to: 'students#show', as: 'student'
  post '/students', to: 'students#create', as: 'new_student'
end
