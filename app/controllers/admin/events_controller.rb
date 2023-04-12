class Admin::EventsController < ApplicationController
  def index
    @events = Event.page(params[:page])
  end
  
  def new
  end

  def show
  end

  def edit
  end
end
