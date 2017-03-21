Rails.application.routes.draw do
  
  get 'enquiry_form' => 'landing_page#post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing_page#index' 


end
