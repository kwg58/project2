class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
  end
  def show
    @episode = Episode.find(params[:id])
  end


  private
  # AM: Looks like you only have `index` and `show` set up, so you won't be making use of these strong_params anywhere.
  def episode_params
    params.require(:episode_id).permit(:title, :air_date, :synopsis )
  end

end
