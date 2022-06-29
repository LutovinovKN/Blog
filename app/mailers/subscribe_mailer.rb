class SubscribeMailer < ApplicationMailer
    default from: "admin@localhost:3000"
end
def subscribe_email(subscriber)
    @subscriber = subscriber
    mail(to: @subscriber.email, subject: "New subscriber", cc: "admin@site.com")
end