class Admin::NewsController < ApplicationController
  def index
  end

  def edit
    @news = News.find(params[:id])
  end
end
