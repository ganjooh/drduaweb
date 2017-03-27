Rails.application.routes.draw do
  
  get 'enquiry_form' => 'landing_page#post'
  get 'hip_surgery' => 'landing_page#hip'
  get 'knee_surgery' => 'landing_page#knee'
  get 'landing_page' => 'landing_page#index'
  get 'aman_dua'    =>   'landing_page#aman_dua'
  get 'dharmesh_khatri' => 'landing_page#dharmesh_khatri'
  get 'faq'  =>   'landing_page#faq_section'
  get  'gallery_section' => 'landing_page#gallery'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing_page#index' 


end
