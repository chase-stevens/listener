class ListenerMailer < ApplicationMailer
    default from: 'notifications@listener.com' # placeholder
    def failure_email
        @user = params[:user]
        @listener = params[:listener]
    end
end
