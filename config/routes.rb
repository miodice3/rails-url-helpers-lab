Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]
  get('/students/:id/activate', {to: 'students#activate', as: "activate_student"})
  #get is the URL we want to create.
  #to is controller action
  #within to, the students is class level, activate is a controller action
  #as is what we're calling it
end
