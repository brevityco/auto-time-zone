module AutoTimeZone
  class Engine < ::Rails::Engine
    isolate_namespace AutoTimeZone

    initializer 'auto_time_zone' do
      ActiveSupport.on_load :action_controller do
        include AutoTimeZone::Callbacks
        helper AutoTimeZone::Helpers
        prepend_before_action :auto_time_zone
      end
    end
  end
end