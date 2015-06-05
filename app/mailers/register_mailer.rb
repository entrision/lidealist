class RegisterMailer < ApplicationMailer
  default from: 'no-reply@Lidealist.com'

  def send_user_data(name, email)
    @name, @email = name, email

    mail to:'joan@entrision.com', subject: 'New user'
  end
end
