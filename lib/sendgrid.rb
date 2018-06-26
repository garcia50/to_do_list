require 'sendgrid-ruby'
include SendGrid

require 'dotenv/load'

body = '<h4>Hello,</h4><br/><p>Regards</p>'

to = Email.new(email: "garcia50@yahoo.com")
from = Email.new(email: 'user@domain.com')
subject = "Test Email"
content = Content.new(type: 'text/html', value: body)
mail = Mail.new(from, subject, to, content)
sg = SendGrid::API.new(api_key: "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")
response = sg.client.mail._('send').post(request_body: mail.to_json)


# from = Email.new(email: 'test@example.com')
# to = Email.new(email: 'garcia50@yahoo.com')
# subject = 'Sending with SendGrid is Fun'
# content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
# mail = Mail.new(from, subject, to, content)

# sg = SendGrid::API.new(api_key: "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")
# response = sg.client.mail._('send').post(request_body: mail.to_json)
# puts response.status_code
# puts response.body
# puts response.headers

# bin/rails runner lib/sendgrid.rb