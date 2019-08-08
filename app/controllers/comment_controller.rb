class CommentController < ApplicationController
  #before_action :authenticate_user, only: [:create]

  def create
    @comment = Comment.create(user: User.last, content: params[:content])
    redirect_to gossip_index_path
  end
end