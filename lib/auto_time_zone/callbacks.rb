module AutoTimeZone
  module Callbacks
    def auto_time_zone
      zone = ActiveSupport::TimeZone[-cookies[:timezone].to_i.minutes] unless cookies[:timezone].blank?
      zone ||= Rails.application.config.time_zone
      Time.zone = zone
    end
  end
end
