class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
     @post = Post.find(params[:id])  
     @comment = Comment.create(params[:comment].permit(:content))
     @comment.user_id = current_user.d
      @comment.post_id = @post.d

    if @comment.save
      redirect_to post_path(@post)
    else
     
      render 'new'
      
    end
    
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
