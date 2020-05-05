@students.map do |student|
  {
    id: student.id,
    first_name: student.first_name,
    last_name: student.last_name,
    email: student.email,
    password_digest: student.password_digest,
    phone_number: student.phone_number,
    short_bio: student.short_bio,
    linkedin_url: student.linkedin_url,
    twitter_url: student.twitter_url,
    website_url: student.website_url,
    resume_url: student.resume_url,
    github_url: student.github_url,
    photo: student.photo,
  }
end


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