class Admin::NewsController < Admin::BaseController
  def index
  end

  def edit
    @news = News.find(params[:id])
  end
end
