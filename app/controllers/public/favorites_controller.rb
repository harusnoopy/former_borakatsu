class Public::FavoritesController < ApplicationController

  def create
    favorite = Favorite.new(user_id: current_user.id, event_id: params[:event_id])
    favorite.save
    redirect_to events_path
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, event_id: params[:event_id])
    favorite.destroy
    redirect_to events_path
  end

  def index
  end

end
