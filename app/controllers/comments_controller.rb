class CommentsController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @comments = @facebook.comments.includes(:user)
    end
  
    def create
      @comment = Comment.new(comment_params)
      if @comment.save
        @facebook = @comment.facebook
      else
        flash[:alert] = "fail"
      end
    end
  
    private
    def comment_params
      params.required(:comment).permit :user_id, :facebook_id, :content
    end
  end
  