class Admin::EventsController < ApplicationController
  def index
    @events = Event.page(params[:page])
  end
  
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to admin_event_path(@event.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end
  
  def update
  end
  
  private

  def event_params
    params.require(:event).permit(:name, :introduction, :date, :schedule, :number_of_people, :is_recruiting)
  end
end
