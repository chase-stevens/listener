class CheckinsController < ApplicationController
  def create
    @listener = Listener.find(params[:listener_id])
    @checkin = @listener.checkins.create(checkin_params)
    redirect_to listener_path(@listener)
  end

  private
    def checkin_params
      params.require(:checkin).permit(:note)
    end
end
