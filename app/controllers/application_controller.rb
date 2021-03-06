class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    around_action :with_time_zone, if: -> { current_user.try(:time_zone) }
    
    protected

    def with_time_zone(&block)
        time_zone = current_user.time_zone
        logger.debug "Используется часовой пояс пользователя: #{time_zone}"
        Time.use_zone(time_zone, &block)
    end
end
