class Api::ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render "index.json.jb"
  end

  def show
    @project = Project.find_by(id: params["id"])
    render "show.json.jb"
  end
end
