class MainController < ApplicationController
  def index
  end

  def send_message
    @message = params[:message][:text]

    Pusher['chat'].trigger('new_message', {
    	message: @message
    	})
    render nothing: true
  end
end
