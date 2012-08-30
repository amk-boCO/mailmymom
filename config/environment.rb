# Load the rails application
require File.expand_path('../application', __FILE__)


ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :domain => "quickleft.com",
  :user_name =>  "amk_boCO",
  :password => "quickleft`",
  :authentication => 'plain',
  :enable_starttls_auto => true
}

# Initialize the rails application
MailMyMom::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :domain => "quickleft.com",
  :user_name =>  "amk_boCO",
  :password => "quickleft`",
  :authentication => 'plain',
  :enable_starttls_auto => true
}