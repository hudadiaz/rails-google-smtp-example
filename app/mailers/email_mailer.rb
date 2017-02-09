class EmailMailer < ApplicationMailer
  def default_email email
    @email = email
    mail(
      to: @email.to.to_s.split(','),
      from: ApplicationMailer::DEFAULT_FROM,
      cc: @email.cc.to_s.split(','),
      bcc: @email.bcc.to_s.split(','),
      subject: @email.subject,
    )
  end
end
