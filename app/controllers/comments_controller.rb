class CommentsController < ApplicationController
  def index
    @comments = Comment.page(params[:page]).per(10)

    render("comment_templates/index.html.erb")
  end

  def show
    @comment = Comment.find(params.fetch("id_to_display"))

    render("comment_templates/show.html.erb")
  end
end
