Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/students" => "students#index"
    post "/students" => "students#create"
    get "/students/:id" => "students#show"
    patch "/students/:id" => "students#edit"
    delete "/students/:id" => "students#destroy"

    get "/experiences" => "experiences#index"
    post "/experiences" => "experiences#create"
    get "/experiences/:id" => "experiences#show"
    patch "/experiences/:id" => "experiences#edit"
    delete "/experiences/:id" => "experiences#destroy"

    get "/educations" => "educations#index"
    post "/educations" => "educations#create"
    get "/educations/:id" => "educations#show"
    patch "/educations/:id" => "educations#edit"
    delete "/educations/:id" => "educations#destroy"

    get "/skills" => "skills#index"
    post "/skills" => "skills#create"
    get "/skills/:id" => "skills#show"
    patch "/skills/:id" => "skills#edit"
    delete "/skills/:id" => "skills#destroy"

    get "/projects" => "projects#index"
    post "/projects" => "projects#create"
    get "/projects/:id" => "projects#show"
    patch "/projects/:id" => "projects#edit"
    delete "/projects/:id" => "projects#destroy"    
  end

  # I sure hope this works!!!!!!

  
end
