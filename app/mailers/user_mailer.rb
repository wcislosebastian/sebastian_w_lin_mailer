class UserMailer < ApplicationMailer
  def welcome_email
    email = 'sw.test.email.sending@gmail.com'
    mail(to: email, subject: 'Project email')
  end
end
