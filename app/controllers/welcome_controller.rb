class WelcomeController < ApplicationController
  def index
    @news = News.all.sort_by{ |news| news.relation_votes.count }
  end
end
