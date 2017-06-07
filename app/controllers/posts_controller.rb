class PostsController < ApplicationController
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
    @post = Post.create!(post_params)
    redirect_to post_index_path
  end
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to post_index_path(@post)
  end
end
