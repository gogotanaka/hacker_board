class WelcomeController < ApplicationController
  def index
    @news = News.select("
      (point - 1) /
      (
        (
          (
            (
              extract (epoch from (cast(current_timestamp as timestamp) - cast(created_at as timestamp)))
            ) / 3600
          ) + 2
        ) ^ 1.5
      ) as rank, point, title, created_at, url, user_id, id").order('rank desc')

    # News.joins('LEFT JOIN (SELECT news_id, COUNT(*) vote_count FROM relation_votes GROUP BY news_id) a ON a.news_id = news.id').order('vote_count ASC').paginate(page: params[:page], per_page: 20)
  end
end
