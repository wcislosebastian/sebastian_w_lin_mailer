class SubmitEmailController < ApplicationController

  def index
    UserMailer.welcome_email.deliver_later
    render json: { status: 'SUCCESS', message: 'Email Sent' }, status: :ok
  end
end
