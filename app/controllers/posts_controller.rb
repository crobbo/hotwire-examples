class PostsController < ApplicationController
  before_action :set_post, only: %i[edit show]

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, success: 'Post was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post, success: 'Post was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @post = Post.find(params[:id])
  #   @post.destroy

  #   redirect_to posts_path, success: 'Post was successfully deleted.'
  # end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
