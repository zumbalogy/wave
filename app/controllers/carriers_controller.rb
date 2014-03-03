class CarriersController < ApplicationController

    def create
        carrier = Carrier.new
        carrier.convo = Convo.find(params[:convo])
        carrier.user = User.find(params[:user])
        carrier.save

        message = Message.new
        message.content = params[:messages]['0']['content']
        message.carrier = carrier
        message.user = User.find(params[:user])
        message.save
    end

    def fetch
        carriers = Convo.find(params[:convo]).carriers
        fleet = []

        carriers.to_a.each do |carrier|
            escort_carrier = {
                messages: carrier.messages,
                email: User.find(carrier.user_id).email,
                parent: carrier.parent_carrier_id,
                time: carrier.updated_at
            }
            fleet << escort_carrier
        end

        render json: fleet
    end

end
