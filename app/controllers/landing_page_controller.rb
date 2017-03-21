class LandingPageController < ApplicationController


  def index

  end 


  def post 
   
   puts "Starting workers thread "
   # Create a single worker.
   worker = Workers::Worker.new

     worker.perform do

     	send_email params

     end 

     redirect_to root_path

   
  end 

  def send_email params

  	if  !params.nil?

   		patient_name = params[:user_name]
	   	patient_email = params[:user_email]
	   	patient_message = params[:user_message]
	   	email_body = "Name of Patient : " +patient_name.to_s + "\n" + "Patient Emails : " + patient_email.to_s + "\n" + "Patient Message : "+patient_message.to_s
	   	gmail = Gmail.connect( "sonal@buzz4health.com", "8955299099" )
	   	email = gmail.compose do

			  to  "sonal@buzz4health.com"
			  from    "Dr Aman Dua"
			  subject   "You Have a new Enquiry "
			  
			  #for adding html template 
			  html_part do

				    content_type 'text/html; charset=UTF-8'
				    body  email_body
			   end

			end

			 #delivering email
			 email.deliver!

 
    end 

  end 

end
