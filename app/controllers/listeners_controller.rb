require 'securerandom'

class ListenersController < ApplicationController
    def index
        @listeners = Listener.all
    end

    def show
        @listener = Listener.find(params[:id])
    end

    def new
        @listener = Listener.new
    end

    def edit
        @listener = Listener.find(params[:id])
    end

    def create
        @listener = Listener.new(listener_params)
        @listener.uuid = SecureRandom.uuid
        @listener.url = "https://www.chaseslisteners.com/#{SecureRandom.hex}"
        @listener.isCheckedIn = false
        @listener.isVerified = false

        if @listener.save
            redirect_to @listener
        else
            render 'new'
        end
    end

    def update
        @listener = Listener.find(params[:id])

        if @listener.update(listener_params)
            redirect_to @listener
        else
            render 'edit'
        end
    end

    def destroy
        @listener = Listener.find(params[:id])
        @listener.destroy

        redirect_to listeners_path
    end

    private
        def listener_params
            params.require(:listener).permit(:title, :interval, :notes)
        end
end
