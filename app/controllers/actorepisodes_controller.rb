class ActorepisodesController < ApplicationController
  # AM: Looks like you have two index actions defined here...
  def index
    @actorepisodes = Actorepisodes.all
  end

  # AM: Content of this one looks more like a show...
  def index
    @actorepisode = Actorepisodes.find(params[:id])
  end
end
