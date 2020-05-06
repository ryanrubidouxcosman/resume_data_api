class Api::EducationsController < ApplicationController
  def index
    @educations = Education.all
    render "index.json.jb"
  end

  def show
    @education = Education.find_by(id: params["id"])
    render "show.json.jb"
  end
end
