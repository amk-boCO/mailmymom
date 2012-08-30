class UserMailer < ActionMailer::Base

  def send_welcome_email(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to mail your mom", :body => "hiiiiii")
  end

end