class TestChannel < ApplicationCable::Channel
  def subscribed
    stream_from "testing_messages_channel"
    puts "subscribed called"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    puts "unsubscribed called"
  end

  def receive(data)
    puts "Received: #{data}"
    puts "Current user: #{current_user.inspect}"
  end
end
