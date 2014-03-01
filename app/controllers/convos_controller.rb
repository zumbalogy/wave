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
