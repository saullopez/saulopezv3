class WelcomeMailer < ActionMailer::Base
  default from: "enquiry@palipainting.com"
  def enquiry(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(to: 'saulopez@mit.edu', subject: "New Message - #{name}")
  end
end