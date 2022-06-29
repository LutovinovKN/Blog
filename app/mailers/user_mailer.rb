class UserMailer < ApplicationMailer
    default from: 'notifications@localhost:3000'

    def welcome_email
        @user = params[:user]
        @url  = 'http://localhost:3000/login'
        mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
end
