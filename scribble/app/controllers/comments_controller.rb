class CommentsController < ApplicationController
  # index
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments.all
  end

  # new
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  # create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    redirect_to post_comments_path(@post, @comment)
  end

  #show
  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  # edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # update
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to comments_path(@comment)
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :content, :post_id)
  end
end
