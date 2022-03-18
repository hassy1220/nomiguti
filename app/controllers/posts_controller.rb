class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def show
    @post = Post.find(params[:id])
    @post_comment = Comment.new
  end
  def index
    @posts = Post.all
  end
  def create
    post = Post.new(post_params)
    post.user_id = current_user.id
    post.save
    redirect_to user_path(post.user_id)
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to user_path(current_user.id)
  end
  private
  def post_params
    params.require(:post).permit(:title,:body,:area)
  end
end
