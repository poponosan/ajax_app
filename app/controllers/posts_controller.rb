class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }  # レスポンスをJSON形式で返却
  end
end
