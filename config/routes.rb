Rails.application.routes.draw do
  root 'reflections#index'

  # :index will give us a list of things, :show gives us details on an individual objects.
  # the new shows the form and create will send the data to the database.
  resources :reflections, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
  end

  # this is for adding a static page
  get "statpics/:page" => "static#show"
end
