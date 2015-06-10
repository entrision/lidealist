class RegisterMailer < ApplicationMailer
  default from: 'no-reply@Lidealist.com'

  def send_user_data(name, email)
    @name, @email = name, email

    mail to:'info@Lidealist.com', subject: 'New user'
  end
end
