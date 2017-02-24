class PostsController < ApplicationController
  def index
    @posts = Post.all
  end


  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end


  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create!(post_params.merge(user: current_user))
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params.merge(user:current_user))
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
end
