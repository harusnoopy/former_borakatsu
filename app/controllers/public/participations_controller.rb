class Public::ParticipationsController < ApplicationController
  def new
    @participation = Participation.new
    @event = params[:event_id]
    @event_name = params[:event][:name]
    @organizer = params[:organizer]
    @event_place = params[:place]
    @event_date = params[:date]
    @event_schedule = params[:schedule]
    @participation.user_id = current_user.id
  end

  def confirm
    @participation = Participation.new(participation_params)
    @event = Event.find(params[:participation][:event_id])
    @participation.user_id = current_user.id
  end

  def create
    participation = Participation.new(participation_params)
    participation.user_id = current_user.id
    if participation.save
      redirect_to thanx_path
    else
      render :confirm
    end
  end

  def thanx
  end

  def index
  end

  def show
  end

  private

  def participation_params
    params.require(:participation).permit(:user_id, :event_id, :is_applying)
  end

end
