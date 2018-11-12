class EventsController < ApplicationController

    def index
        render json: Event.all
    end

    # params[:id] is userid
    def show
        event = Event.where(user_id: params[:id])
        render json: event.to_json
    end


end
