class News < ActiveRecord::Base
  has_many :relation_votes
  has_many :users, through: :relation_vote

  has_many :comments

  belongs_to :user

  def user
    User.first
  end

  def vote_count
    point
  end

  def self.days_ago(i)
    News.where(created_at: [(i+1).days.ago..i.days.ago])
  end
end
