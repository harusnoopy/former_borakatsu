class Admin::ParticipationsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @event = Event.find(params[:event_id])
  end
end
