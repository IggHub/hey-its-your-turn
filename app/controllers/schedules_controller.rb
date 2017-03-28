class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.user_id = current_user.id
    if @schedule.save
      flash[:notice] = "Schedule was successfully created!"
      redirect_to @schedule
    else
      render :new
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      flash[:notice] = "Schedule was successfully updated"
      redirect_to @schedule
    else
      render :edit
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    if @schedule.destroy
      flash[:notice] = "\"#{@schedule.title}\" was deleted successfully"
      redirect_to schedules_path
    else
      flash[:alert] = "Error deleting schedule"
      render :show
    end
  end

  private

  def schedule_params
    params.require(:schedule).permit(:title, :due_at, :user_id)
  end
end
