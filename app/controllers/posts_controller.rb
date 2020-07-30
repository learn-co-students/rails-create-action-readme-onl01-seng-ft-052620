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

  # add create method here
  # def create
  #   post = Post.new
  #   post.title = params[:title]
  #   post.description = params[:description]
  #   post.save
  # end

  # Update the code with a redirect that leverages a route helper method

  # Refactor the post variable into an instance variable  

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end
end
