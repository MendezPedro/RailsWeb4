class PostsController < ApplicationController
  def index
  end

  def create
    @post = Post.create(name: params[:name], status: params[:status], description: params[:description],
                        init_date: params[:init_date], end_date: params[:end_date])
  end

  def dashboard
    if params[:status].present?
      @posts = Post.where('status = ?', params[:status])
    else
      @posts = Post.all
    end
    
  end
end
