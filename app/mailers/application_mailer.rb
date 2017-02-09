class ApplicationMailer < ActionMailer::Base
  DEFAULT_FROM = ENV['GMAIL_ACCOUNT']

  default from: DEFAULT_FROM
  layout 'mailer'
end
