require 'sendgrid-ruby'
include SendGrid

require 'dotenv/load'

body = '<h4>Hello,</h4><br/><p>Regards</p>'

to = Email.new(email: "garcia50@yahoo.com")
from = Email.new(email: 'user@domain.com')
subject = "Test Email"
content = Content.new(type: 'text/html', value: body)
mail = Mail.new(from, subject, to, content)
sg = SendGrid::API.new(api_key: #B7 check notes to retrieve api key
response = sg.client.mail._('send').post(request_body: mail.to_json)
