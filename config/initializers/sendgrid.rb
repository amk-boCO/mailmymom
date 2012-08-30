  ActionMailer::Base.smtp_settings = {
    :user_name => "amk_boCO",
    :password => "quickleft",
    :domain => "quickleft.com",
    :address => "smtp.sendgrid.net",
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }
