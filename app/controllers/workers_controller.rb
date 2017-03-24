class WorkersController < ApplicationController
  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)
    @worker.user_id = current_user.id
    if @worker.save
      flash[:success] = "Congratulations! You just added a worker"
      redirect_to root_path
    else
      render :new
    end
  end

  def update

  end

  def destroy
  end

  private
  def worker_params
    params.require(:worker).permit(:name, :email, :phone, :user_id)
  end
end
