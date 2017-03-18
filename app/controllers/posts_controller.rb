class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to @post
    else
      flash[:alert] = 'There was a problem creating  a post'
      render 'new'
      
    end
  end

  def edit
  end
  def update
    
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
  end

  private

  def find_params
    
  end

  def post_params
     params.require(:post).permit(:title, :link, :description)
    
  end
end
