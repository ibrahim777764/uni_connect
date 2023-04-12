Rails.application.routes.draw do
  get '/students', to: 'students#index'
  get 'register/student', to: 'students#new', as: 'register_student'
  get 'register/university', to: 'universities#new', as: 'register_university'

  resources :universities do
    resources :courses
  end

  resources :students, only: [:new, :create]

  root to: 'home#index'
end
