class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
