class User < ActiveRecord::Base

  after_create :send_initial_email

  def send_initial_email
    UserMailer.send_welcome_email(self).deliver
  end

end