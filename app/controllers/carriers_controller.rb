class CarriersController < ApplicationController
    def create
        carrier = Carrier.new
        carrier.convo = Convo.find(params[:convo])
        carrier.user = User.find(params[:user])
        carrier.save

        message = Message.new
        message.content = params[:data]
        message.carrier = carrier
        message.user = User.find(params[:user])
        message.save
    end
end
