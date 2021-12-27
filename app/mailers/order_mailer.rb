class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.send_confirmation.subject
  #
  default from: 'no-reply@mplace.com'

  def send_confirmation(order)
    @order = order
    @user = @order.user

    mail to: @user.email, subject: 'Order confirmation'
  end
end
