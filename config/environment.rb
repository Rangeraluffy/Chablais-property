# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
#Using send grid to send message confirmation
ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'yourdomain.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
ActionMailer::Base.delivery_method = :smtp
