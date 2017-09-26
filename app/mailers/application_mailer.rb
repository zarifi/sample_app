class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@example.com'
  layout 'mailer'

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end

end
