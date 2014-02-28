class ConvosController < ApplicationController

    def new
        convo = Convo.new
        convo.users << current_user
        convo.save
        redirect_to '/convos/' + convo.id.to_s
    end

    def show
        convo = Convo.find(params[:id])


        @convo = convo
    end

    def update
    end

    def delete
    end

end
