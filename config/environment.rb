# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
 
ActionMailer::Base.smtp_settings = {
  user_name:  "garcia50@yahoo.com",
  password:  "lgarcia61",
  domain:  'LG.com',
  address:  'smtp.sendgrid.net',
  port:  587,
  authentication:  :plain,
  enable_starttls_auto:  true
}