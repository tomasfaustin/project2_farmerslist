class PostsController < ApplicationController
  before_action :set_posts, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
    redirect_to posts_path
    else
    render :new
    end
  end

def update
  @post = Post.find(params[:id])
  if @post.update_attributes(post_params)
    redirect_to posts_path
  else
    render :edit
  end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
end

private
def post_params
  params.require(:post).permit(:user_id, :title, :message, :organic, :location)
end

end
