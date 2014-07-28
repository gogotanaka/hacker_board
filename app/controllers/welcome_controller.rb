class WelcomeController < ApplicationController
  def index
    @news = News.all.sort { |a, b| b.vote_count <=> a.vote_count }

    # News.joins('LEFT JOIN (SELECT news_id, COUNT(*) vote_count FROM relation_votes GROUP BY news_id) a ON a.news_id = news.id').order('vote_count ASC').paginate(page: params[:page], per_page: 20)
  end
end
