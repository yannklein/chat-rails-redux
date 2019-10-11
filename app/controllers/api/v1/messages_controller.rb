class Api::V1::MessagesController < ApplicationController
  before_action :find_channel

  def index
    @messages = @channel.messages
    @jsoned_message = @messages.map do |message|
      { id: message.id,
        author: message.user.email,
        content: message.content,
        created_at: message.created_at }
    end
    render json: @jsoned_message
  end

  def create
    message = @channel.messages.build(content: params[:content])
    message.user = current_user
    message.save
    render json: message # see Message.as_json method
  end

  def find_channel
    @channel = Channel.find_by(name: params[:channel_id])
  end
end
