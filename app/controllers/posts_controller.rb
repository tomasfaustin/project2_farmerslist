class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show, :search]

  def index
    @posts = Post.all.order("created_at DESC")
  end

# This allows for the search functionality in the nav bar
  def search
  @posts = Post.where("title ILIKE ? OR message ILIKE ? OR location ILIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    @message = "There aren't any posts about #{params[:search]}" if @posts.length == 0
    render 'index'
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:user_id, :title, :message, :organic, :location, :image, :price, :phone))
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
  params.require(:post).permit(:user_id, :title, :message, :organic, :location, :image, :price, :phone)
end

def set_post
  @post = Post.find(params[:id])
end

end
