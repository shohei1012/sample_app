# Preview all emails at https://197e7f899b2b47e7b1009e8d922cd424.vfs.cloud9.us-east-2.amazonaws.com//rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at https://197e7f899b2b47e7b1009e8d922cd424.vfs.cloud9.us-east-2.amazonaws.com//rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at https://197e7f899b2b47e7b1009e8d922cd424.vfs.cloud9.us-east-2.amazonaws.com//rails/mailers/user_mailer/password_reset
  def password_reset
    user = User.first
    user.reset_token = User.new_token
    UserMailer.password_reset(user)  end

end
