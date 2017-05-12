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
 
  
  def hip

  end 

  def knee

  end 

  def aman_dua

  end 

  def faq_section

  end 

  def gallery

  end 


  def send_email params

	  	if  !params.nil?

	   		patient_name = params[:user_name]
		   	patient_email = params[:user_email]
		   	patient_message = params[:user_message]
        patient_no  = params[:user_phone]
		   	email_body = "Name of Patient : " + patient_name.to_s + "\n" + "Patient Emails : " + patient_email.to_s + "\n"+ "Patient no : "+ patient_no.to_s + "\n" + "Patient Message : " +patient_message.to_s
		   	gmail = Gmail.connect( "cjdenquiry@gmail.com", "buzz4health" )
		   	email = gmail.compose do

				  to  " mail@cjdonline.com"
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
