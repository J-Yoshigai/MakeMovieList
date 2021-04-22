Rails.application.routes.draw do
  get "movies" => "movies#index"
  get "admin/movies/new" => "movies#new"
  post "admin/movies/create" => "movies#create"
  get "admin/movies/success" => "movies#success"
  delete "admin/movies/:id" => "movies#destroy"
end
