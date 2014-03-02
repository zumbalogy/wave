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

    def fetch
        # probably want to have this render carriers with messages inside them
        carriers = Convo.find(params[:convo]).carriers
        output = {}

        

        render json: output
    end

end
