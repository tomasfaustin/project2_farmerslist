class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]

  # def search
  #   @results = Post.where("title ILIKE ?", "%#{'carrots'}%")
  # end

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
    @post = Post.new(params.require(:post).permit(:user_id, :title, :message, :organic, :location, :image))
    @post.user = current_user
    if @post.save
    redirect_to posts_path
    else
    render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    redirect_to posts_path if @post.user != current_user
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
  redirect_to posts_path
end


private
def post_params
  params.require(:post).permit(:user_id, :title, :message, :organic, :location, :image)
end

def set_post
  @post = Post.find(params[:id])
end

end
