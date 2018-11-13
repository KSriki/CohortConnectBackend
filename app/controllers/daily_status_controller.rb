class DailyStatusController < ApplicationController

    def index
        render json: DailyStatus.all.to_json
    end

  def create
    dailyStatus = DailyStatus.create(status_params)
    render json: dailyStatus.to_json
  end

  def show
    dailyStatus = DailyStatus.find(params[:id])
    render json: dailyStatus.to_json
  end

  def update
    dailyStatus = DailyStatus.find(params[:id])
    dailyStatus.update(status_params)
    render json: dailyStatus.to_json
  end

  def delete
    dailyStatus = DailyStatus.find(params[:id])
    dailyStatus.destroy()
    render json: dailyStatus.to_json
  end

  private
  def status_params
    params.require(:dailyStatus).permit(:status, :user_id)
  end


end
