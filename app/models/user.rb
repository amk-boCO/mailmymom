class User < ActiveRecord::Base

  attr_accessor :option1, :option2, :option3

  before_create :process_options
  after_create :send_email


  def process_options
    options_1 = option1.split(',')
    options_1.each do |option|
      Option.create(:user_id => self.id, :option_id => 1, :option => option)
    end
    options_2 = option2.split(',')
    options_2.each do |option|
      Option.create(:user_id => self.id, :option_id => 2, :option => option)
    end

    options_3 = option3.split(',')
    options_3.each do |option|
      Option.create(:user_id => self.id, :option_id => 3, :option => option)
    end

  end

  def send_email
    UserMailer.send_welcome_email(self).deliver
  end

end