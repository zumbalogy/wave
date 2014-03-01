require 'eventmachine'

class ConvosController < ApplicationController

    def new
        convo = Convo.new
        convo.users << current_user
        convo.save
        #redirect_to '/convos/' + convo.id.to_s
        redirect_to '/' 
    end

    def show
        convo = Convo.find(params[:id])

        # EM.run do
        #     client = Faye::Client.new('http://localhost:9292/faye')
        #     client.subscribe('/convo/' + convo.id.to_s) do |message|
        #         puts message.inspect
        #     end
        #     client.publish('/convo/' + convo.id.to_s, 'text' => 'Hello world')
        # end

        @convo = convo
    end

    def update
    end

    def destroy
        convo = Convo.find(params[:id])
        convo.delete
        redirect_to '/'
    end

    def add
        convo = Convo.find(params[:convo])
        new_user = User.find_by_email(params[:email])
        if new_user && convo.users.include?(new_user) == false
            convo.users << new_user
        else
            raise 'error, dont add them'
        end
        redirect_to '/'
    end
end
