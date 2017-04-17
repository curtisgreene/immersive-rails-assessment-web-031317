class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def show
    @appearance = appearance.find(params[:id])
  end

  def new
    @guests = Guest.all
    @episodes = Episode.all
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(apperance_params)
    redirect_to episodes_path
  end

  private


  def apperance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end
