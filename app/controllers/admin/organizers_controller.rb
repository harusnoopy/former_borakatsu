class Admin::OrganizersController < ApplicationController
  def index
    @organizers = Organizer.page(params[:page])
  end

  def new
    @organizer = Organizer.new
  end

  def create
    @organizer = Organizer.new(organizer_params)
    if @organizer.save
      redirect_to admin_organizer_path(@organizer.id)
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

  def organizer_params
    params.require(:organizer).permit(:name, :introduction, :postal_code, :address, :telephone_number, :email, :homepage)
  end
end
