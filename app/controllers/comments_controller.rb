class CommentsController < ApplicationController
  def new
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.new
  end
  
  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to topics_path, success: 'コメント投稿に成功しました'
    else
      flash.now[:danger] = "コメント入力必須です"
      render :new
    end
  end
  
  private
    def comment_params
      params.require(:comment).permit(:content)  
    end
end
