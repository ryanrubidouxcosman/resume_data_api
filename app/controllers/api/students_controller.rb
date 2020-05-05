class Api::StudentsController < ApplicationController
  def index
    @students = Student.all
    render "index.json.jb"
  end

  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      password_digest: params[:password_digest],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      website_url: params[:website_url],
      resume_url: params[:resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
    )
    @Student.save
    render "show.json.jb"
  end

  def show
    @student = Student.find_by(id: params[:id])
    render "show.json.jb"
  end

  def edit
    @student = Photo.find_by(id: params[:id])
    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.password_digest = params[:password_digest] || @student.password_digest
    @student.phone_number = params[:phone_number] || @student.phone_numnber
    @student.short_bio = params[:short_bio] || @student.short_bio
    @student.linkedin_url = params[:linked_url] || @student.linkedin_url
    @student.twitter_handle = params[:twitter_handle] || @student.twitter_handle
    @student.website_url = params[:website_url] || @student.website_url
    @student.resume_url = params[:resume_url] || @student.resume_url
    @student.github_url = params[:github_url] || @student.github_url
    @student.photo = params[:photo] || @student.photo
    @student.save
    render "show.json.jb"
  end

  def destroy
    student = Student.find_by(id: params[:id])
    student.destroy
    render json: {message: "Student is successfully destroyed."}
  end
end


#NOTES

# t.string :first_name
# t.string :last_name
# t.string :email
# t.string :password_digest
# t.string :phone_number
# t.text :short_bio
# t.string :linkedin_url
# t.string :twitter_handle
# t.string :website_url
# t.string :resume_url
# t.string :github_url
# t.string :photo

# get "/students" => "students#index"
# post "/students" => "students#create"
# get "/students/:id" => "students#show"
# patch "/students/:id" => "students#edit"
# delete "/students/:id" => "students#destroy"