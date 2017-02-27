class PostsController < ApplicationController
  before_action :set_posts, only: [:show, :edit, :update, :destroy]

  def index
    @posts = User.all
  end

  def show
    @posts = User.find(params[:id])
  end

  def new
    @posts = User.new
  end

  def create
    @posts = User.new(posts_params)

    if @posts.save
    redirect_to posts_path
    else
    render :new
  end
end

def edit
  @posts = User.find(params[:id])
end

def update
  @posts = User.find(params[:id])

  if @posts.update_attributes(posts_params)
    redirect_to posts_path
  else
    render :edit
  end
end

def destroy
  @posts = User.find(params[:id])
  @posts.destroy
  redirect_to posts_path
end

private
def posts_params
  params.require(:posts).permit(:name, :email, :password, :password_confirmation)
end

end
