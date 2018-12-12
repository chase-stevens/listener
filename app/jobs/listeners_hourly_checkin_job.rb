require 'date'

class ListenersHourlyCheckinJob < ApplicationJob
  queue_as :default

  def perform(*args)
    current_period = DateTime.now.beginning_of_hour
    Lisener.all.each do |listener|
      if listener.checkins.order("created_at").last >= current_period && listener.checked_in == true
        listener.checked_in = false
      else
        # mailer does not currently exist
        ListenerMailer.with(listener.email).failure_email.deliver_now 
    # listeners.each do |listener|
    # => if listener.checkin.last.created_at >= current_period - 1
    # =>  listener.checked_in = false
    # => else
    # =>  mail failure_email to listener.email
    # => end
  end
end
