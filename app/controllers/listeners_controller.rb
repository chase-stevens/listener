class ListenersController < ApplicationController
    def index
        @listeners = Listener.all
    end

    def show
        @listener = Listener.find(params[:id])
    end

    def new
    end

    def create
        @listener = Listener.new(listener_params)

        @listener.save
        redirect_to @listener
    end

    private
        def listener_params
            params.require(:listener).permit(:title, :interval)
        end
end
