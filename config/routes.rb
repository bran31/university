Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'courses#index'
  get 'about', to: "pages#about"
  
  resources :courses
  resources :students
  
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'
  post "course_enroll", to: 'student_courses#create'

end
