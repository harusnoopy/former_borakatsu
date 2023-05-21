class Public::EventsController < ApplicationController
  def index
    @events = Event.page(params[:page]).order(created_at: :desc)
  end

  def show
    @event = Event.find(params[:id])
    if user_signed_in?
      @event_participation = Participation.find_by(event_id: params[:id], user_id: current_user.id)
    end
    @participation = Participation.new
  end
end
