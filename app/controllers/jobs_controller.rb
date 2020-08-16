class JobsController < ApplicationController

  def index
    @job = Job.new
    @jobs = Job.all
  end

  def create
    @job = Job.new(job_params)
    @job.save
    redirect_to jobs_path
  end

  def edit
    @job = Job.find(params[:id])
  end 

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    redirect_to jobs_path
  end
  
  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
  end

  private
  def job_params
  	params.require(:job).permit(:name, :amount)
  end
end
