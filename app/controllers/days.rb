class DaysController < ApplicationController

  def index
    days = Day.all.order(starts_at: :desc)

    render status: 200, json: days
  end
end
