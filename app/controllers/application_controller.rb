class ApplicationController < ActionController::Base
  before_action :authenticate_upload_picture!

  protect_from_forgery with: :exception
end
