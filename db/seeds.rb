# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


student = Student.create!(first_name: 'Bill', last_name: 'Gates', email: 'billgates@example.com', password: 'password', password_confirmation: 'password', phone_number: '7732025862', short_bio: 'I made the PC.', linkedin_url: 'linkedin.com/billgates', twitter_handle: 'twitter.com/billgates', website_url: 'billgates.com', resume_url: 'billgatesresumesample@microsoft.com', github_url: 'github.com/bgates', photo: 'billgatespicture.com')
Experience.create!(student_id: student.id, start_date: "June 9th 1969", end_date: "To Present", job_title: "Founder", company_name: "Microsoft", details: "Created Microsoft")
Education.create!(student_id: student.id, start_date: "August 15th 1968", end_date: "May 5th 1969", degree: "Honorary Masters", university_name: "Harvard University", details: "Took one course in computer science and then became the professor.")
Skill.create!(student_id: student.id, skill_name: "C")
Skill.create!(student_id: student.id, skill_name: "C+")
Skill.create!(student_id: student.id, skill_name: "C++")
Skill.create!(student_id: student.id, skill_name: "C#")
Skill.create!(student_id: student.id, skill_name: "C-")
Project.create!(student_id: student.id, name: "Microsoft Suite", description: "The worst UI, most stable offline functional office application known to man.", url: "office365.com", screenshot: "bing.com/images?=search=microsoft") 
