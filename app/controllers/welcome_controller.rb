class WelcomeController < ApplicationController
  def index
    @news = News.all.sort{ |a, b| b.relation_votes.count <=> a.relation_votes.count }
  end
end
