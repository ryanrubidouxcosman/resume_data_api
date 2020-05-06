class Api::ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render "index.json.jb"
  end

  def create
    @project = Project.new(
      student_id: params[:student_id],
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
    )
    @project.save
    render "show.json.jb"
  end

  def show
    @project = Project.find_by(id: params["id"])
    render "show.json.jb"
  end

  def edit
    @project = Project.find_by(id: params[:id])
    @project.student_id = params[:student_id] || @project.student_id
    @project.name = params[:name] || @project.name
    @project.description = params[:description] || @project.description
    @project.url = params[:url] || @student.url
    @project.screenshot = params[:screenshot] || @project.screenshot
    @project.save
    render "show.json.jb"
  end
 
  def destroy
    project = Project.find_by(id: params[:id])
    project.destroy
    render json: {message: "Project is successfully destroyed."}
  end
end

