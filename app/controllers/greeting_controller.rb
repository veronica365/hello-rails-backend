class GreetingController < ApplicationController
  def index
    @message = Message.order('RANDOM()').first
    render json: @message
  end
end
