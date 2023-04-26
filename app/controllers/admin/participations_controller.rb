class Admin::ParticipationsController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @participation = Participation.find(params[:event_id])
    @participations = Participation.all.order(created_at: :desc)
  end
end
