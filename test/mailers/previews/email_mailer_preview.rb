# Preview all emails at http://localhost:3000/rails/mailers/email_mailer
class EmailMailerPreview < ActionMailer::Preview
  def default
    EmailMailer.default_email(Email.new(
      to: "person1@email.com",
      cc: "person2@email.com",
      bcc: "person3@email.com",
      subject: "Lorem ipsum dolor sit amet.",
      content: "Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    ))    
  end
end
