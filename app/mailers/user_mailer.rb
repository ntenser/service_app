class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: 'Thank you for signing up!')
  end

  def book_service_email(user, job)
    @user = user
    @job = job
    mail(to: @user.email, subject: 'Thank you for booking a service!')
  end

  def service_accepted(client, job)
    @client = job.user
    @job = job
    mail(to: @client.email, subject: 'Your service request has been accepted!')
  end
end
