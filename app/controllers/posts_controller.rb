class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.post_images.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  
  def post_params
    params.require(:post).permit(:title, :body, post_images_attributes: [:src])
  end

end
