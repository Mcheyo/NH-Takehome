Rails.application.routes.draw do
  resources :appointments
  resources :doctors
  get 'doctors/:name/appointments', :to => 'doctors#my_appointments'
  get 'appointments/date/:date', :to => 'appointments#find_by_date'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
