module Api::V1
  class ChatroomsController < ApplicationController
    def index
      @chatrooms = Chatroom.all
      render json: @chatrooms
    end
  end
end
