class Public::ParticipationsController < ApplicationController
  before_action :authenticate_user!
  
  def confirm
    @participation = Participation.new(participation_params)
    @event = Event.find(params[:participation][:event_id])
    @participation.user_id = current_user.id
  end

  def create
    participation = Participation.new(participation_params)
    participation.user_id = current_user.id
    if participation.save
      redirect_to participation_path(participation.id), notice: 'ご応募ありがとうございます！'
    else
      render :confirm
    end
  end

  def index
    @participations = Participation.page(params[:page])
  end

  def show
    @participation = Participation.find(params[:id])
  end
  
  def cancel
    participation = Participation.find_by(event_id: event_id, user_id: current_user.id)
    participation.update(is_applying: false)
    flash[:notice] = "応募をキャンセルしました"
    redirect_to event_path(event.id)
  end

  private

  def participation_params
    params.require(:participation).permit(:user_id, :event_id, :is_applying)
  end

end
