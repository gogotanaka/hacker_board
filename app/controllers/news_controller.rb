class NewsController < ApplicationController
  before_action :set_news, only: [:show, :destroy, :jump]

  # GET /news/1
  # GET /news/1.json
  def show
    @comment = Comment.new
  end

  # GET /news/new
  def new
    @news = News.new
  end


  # POST /news
  # POST /news.json
  def create
    @news = News.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to root_path, notice: 'News was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'News was successfully destroyed.' }
    end
  end

  def jump
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:title, :url, :contents, :user_id)
    end
end
