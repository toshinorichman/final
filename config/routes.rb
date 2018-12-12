Rails.application.routes.draw do
  root :to => "upload_pictures#index"
  devise_for :comments
  # Routes for the Comment resource:

  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:id_to_display", { :controller => "comments", :action => "show" })

  #------------------------------

  devise_for :upload_pictures
  # Routes for the Upload picture resource:

  # READ
  get("/upload_pictures", { :controller => "upload_pictures", :action => "index" })
  get("/upload_pictures/:id_to_display", { :controller => "upload_pictures", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
