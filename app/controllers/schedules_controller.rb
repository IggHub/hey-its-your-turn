class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
  end

  def new
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to @schedule, notice: 'Schedule was succesfffully updated'
    else
      render :edit
    end
  end

  private

  def schedule_params
    params.require(:schedule).permit(:title, :due_at)
  end
end
