class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def create
    @post = Post.create(post_params)
    redirect_to "/"
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params[:body])
    redirect_to "/posts/#{@post.id}"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    # @comment = @post.comments.find(params[:id])
    # @comment.destroy


    redirect_to "/"
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end


end
