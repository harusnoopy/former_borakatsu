class Admin::OrganizersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @organizers = Organizer.page(params[:page]).order(created_at: :desc)
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
    @organizer = Organizer.find(params[:id])
  end

  def edit
    @organizer = Organizer.find(params[:id])
  end

  def update
    @organizer = Organizer.find(params[:id])
    if @organizer.update(organizer_params)
      redirect_to admin_organizer_path(@organizer.id)
    else
      render :edit
    end
  end

  private

  def organizer_params
    params.require(:organizer).permit(:name, :introduction, :postal_code, :address, :telephone_number, :email, :homepage)
  end
end
