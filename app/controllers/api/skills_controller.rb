class Api::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render "index.json.jb"
  end

  def show
    @skill = Skill.find_by(id: params["id"])
    render "show.json.jb"
  end
end
