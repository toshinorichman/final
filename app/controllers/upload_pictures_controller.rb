class UploadPicturesController < ApplicationController
  def index
    @upload_pictures = UploadPicture.page(params[:page]).per(10)

    render("upload_picture_templates/index.html.erb")
  end

  def show
    @upload_picture = UploadPicture.find(params.fetch("id_to_display"))

    render("upload_picture_templates/show.html.erb")
  end
end
