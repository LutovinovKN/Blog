# описываем класс уведомления, который производит отправку сообщений и записывает лог:
module Notifications
    module Notification
        class Base
            attr_reader :user

            def initialize(user)
                @user = user
            end

            def perform?
                false
            end

            def send!
                NotificationMailer.send(notification_type, user).deliver
                create_log!
            end

            private
            def notification_params
                {
                user_id: user.id,
                type: notification_type
                }
            end

            def notification_type
                self.class.name.demodulize.underscore
            end

            def create_log!
                EmailLog.create!(notification_params)
            end
        end
    end
end