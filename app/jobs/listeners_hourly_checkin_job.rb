require 'date'

class ListenersHourlyCheckinJob < ApplicationJob
  queue_as :default

  def perform(*listeners)
    current_period = DateTime.now.beginning_of_hour

    listeners.each do |listener|
      if listener.checkins.order("created_at").last >= current_period && listener.checked_in == true
        listener.checked_in = false
      else
        ListenerMailer.with(listener.email).failure_email.deliver_now
      end
    end
  end
end
