Rails.application.routes.draw do
  devise_for :upload_pictures
  # Routes for the Upload picture resource:

  # READ
  get("/upload_pictures", { :controller => "upload_pictures", :action => "index" })
  get("/upload_pictures/:id_to_display", { :controller => "upload_pictures", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
