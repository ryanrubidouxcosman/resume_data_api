class Api::EducationsController < ApplicationController
  def index
    @educations = Education.all
  end

  def show
    education_id = params["id"]
    @education = Education.find_by(id: education_id)
    render "show.json.jb"
end
