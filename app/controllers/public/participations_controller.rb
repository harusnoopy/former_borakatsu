class Public::ParticipationsController < ApplicationController
  def new
    @participation = Participation.new
  end

  def confirmation
    @participation = Participation.new(participation_params)
  end
  
  def create
    participation = Participation.new(participation_params)
    participation.user_id = current_user.id
    if participation.save
      redirect_to thanx_path
    else
      render :confirmation
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
