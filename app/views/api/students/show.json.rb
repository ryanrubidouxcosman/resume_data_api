@students.map do |student|
  {
    id: @student.id,
    first_name: @student.first_name,
    last_name: @student.last_name,
    email: @student.email,
    password_digest: @student.password_digest,
    phone_number: @student.phone_number,
    short_bio: @student.short_bio,
    linkedin_url: @student.linkedin_url,
    twitter_url: @student.twitter_url,
    website_url: @student.website_url,
    resume_url: @student.resume_url,
    github_url: @student.github_url,
    photo: @student.photo,
  }
end