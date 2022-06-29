class User < ApplicationRecord
    def time_zone
        unless @time_zone
            tz_id = read_attribute(:time_zone)
            as_name = ActiveSupport::TimeZone::MAPPING.select do |_,v|
                v == tz_id
            end.sort_by do |k,v|
                v.ends_with?(k) ? 0 : 1
            end.first.try(:first)
            value = as_name || tz_id
            @time_zone = value && ActiveSupport::TimeZone[value]
        end
        @time_zone
    end
end
