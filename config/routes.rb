Rails.application.routes.draw do
  get "movies" => "movies#first"
  get "admin/movies" => "movies#index"
  get "admin/movies/new" => "movies#new"
  post "admin/movies" => "movies#create"
  # get "admin/movies/success" => "movies#success"
  delete "admin/movies/:id" => "movies#destroy"
  patch "admin/movies/:id" => "movies#update"
end
