class Api::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render "index.json.jb"
  end

  def show
    @skill = Skill.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @skill = Skill.new(
      student_id: params[:student_id],
      skill_name: params[:skill_name],
    )
    @skill.save
    render "show.json.jb"
  end

  def destroy
    @skill = Skill.find_by(id: params["id"])
    @skill.destroy
    render json: {message: "Skill is successfully destroyed."}
  end

  def edit
    @skill = Skill.find_by(id: params[:id])
    @skill.student_id = params[:student_id] || @skill.student_id
    @skill.skill_name = params[:skill_name] || @skill.skill_name
    @skill.save
    render "show.json.jb"
  end

end

