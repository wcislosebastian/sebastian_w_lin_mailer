class UserMailer < ApplicationMailer
  def welcome_email
    email = 'project@test.com'
    mail(to: email, subject: 'Welcome to My Awesome Site')
  end
end
