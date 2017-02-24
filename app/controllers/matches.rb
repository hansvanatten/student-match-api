class MatchesController < ApplicationController

  def index
    @matches = Match.all

    render status: 200, json: matches
  end

  def show
    match = Match.find(params[:id])

    render status: 200, json: match
  end
end
