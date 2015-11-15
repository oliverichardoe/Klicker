class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def create
  	@post = Post.new(priv_params)
  	@post.name = current_user.email
  	if @post.save
  		flash[:success] = "Success"
  		redirect_to post_path(@post)
  	else
  		flash[:error] = @post.errors.full_messages
  		redirect_to new_post_path
  	end
  end

  private 
  	def priv_params
  		params.require(:post).permit(:image, :description)
  	end
end
