json.extract! email, :id, :to, :from, :cc, :bcc, :subject, :content, :status, :created_at, :updated_at
json.url email_url(email, format: :json)