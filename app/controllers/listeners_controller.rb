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

    private
        def listener_params
            params.require(:listener).permit(:title, :interval)
        end
end
