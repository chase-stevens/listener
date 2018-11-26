class ListenersController < ApplicationController
    def new
    end

    def create
        render plain: params[:listener].inspect
    end
end
