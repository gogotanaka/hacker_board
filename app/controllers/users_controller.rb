class UsersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def vote
    news = News.find(params[:news_id])
    current_user.vote(news)
    redirect_to :back
  end
end
