class UserNotifier < ApplicationMailer
  default :from => 'garcialjr50@gmail.com'

  def send_tasks_email(user)
    @user = user
    mail( to: @user.email, subject: "Let's do some tasks!" )
  end
end