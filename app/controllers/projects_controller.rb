class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @status = params[:status_selection]
  end

  def create
    @project = project.new(project_params)
    @project.save
    redirect_to project_path
    #flowレコードの作成
    @flow = @project.flow
  end

  def index
    @projects = Project.all
  end

  def show
  end

  def edit
  end

  private
  def project_params
    params.require(:project).permit(:name, :content, :stat_date, :finish_date, :status, :reducation_time, :total_amount, :total_amount, :reducation_amount, :number_of_month)
  end
end
