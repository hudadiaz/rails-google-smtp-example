class Email < ApplicationRecord
  validates_presence_of :to, :subject, :content

  before_create :remove_spaces
  after_create :send_email

  def send_email
    EmailMailer.default_email(self).deliver_now
  end

  private

  def remove_spaces
    to = to.to_s.gsub(' ', '')
    cc = cc.to_s.gsub(' ', '')
    bcc = bcc.to_s.gsub(' ', '')
    from = from.to_s.gsub(' ', '')
  end
end
