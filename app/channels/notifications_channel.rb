class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "notification_#{params[:id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
