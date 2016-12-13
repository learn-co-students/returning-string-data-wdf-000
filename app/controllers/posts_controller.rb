class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def body
    # binding.pry
    post = Post.find(params[:id])
    render plain: post.description
    # explicitly render plain text, so we call render with the :plain option.
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @action = "Submit"
    @post = Post.new

  end

  def create
    # binding.pry

    @post = Post.create(post_params)
    @post.save
    redirect_to post_path(@post)
  end

  def edit
    @action = "Update"
  end


  def update

    @post.update(post_params)
    redirect_to post_path(@post)
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :description)
  end
end
