class PostsController < ApplicationController
  before_action :find_params, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    
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
     if @post.update(post_params)
      redirect_to @post
    else
      flash[:alert] = 'There was a problem updating the post'
      render 'edit'
      
    end
    
  end

  def show

  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def find_params
     @post = Post.find(params[:id])    
  end

  def post_params
     params.require(:post).permit(:title, :link, :description, :picture)
    
  end
end
