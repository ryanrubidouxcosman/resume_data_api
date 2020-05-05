class Api::ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render "index.json.jb"
  end
end
