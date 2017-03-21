Rails.application.routes.draw do
  
  get 'enquiry_form' => 'landing_page#post'
  get 'hip_surgery' => 'landing_page#hip'
  get 'knee_surgery' => 'landing_page#knee'
  get 'landing_page' => 'landing_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing_page#index' 


end
