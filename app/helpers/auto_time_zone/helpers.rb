module AutoTimeZone
  module Helpers
    def auto_time_zone
      javascript_tag "window.autoTimeZone(#{Time.now.utc.to_i})"
    end
  end
end