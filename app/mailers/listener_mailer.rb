class ListenerMailer < ApplicationMailer
    default from: 'notifications@listener.com' # placeholder
    def failure_email
        @listener = params[:listener]
    end
end
