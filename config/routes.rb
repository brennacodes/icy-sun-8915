Rails.application.routes.draw do
  resources :employee_tickets
  resources :tickets
  resources :employees
  resources :departments
end
