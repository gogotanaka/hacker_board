class News < ActiveRecord::Base
  has_many :relation_votes
  has_many :users, through: :relation_vote

  has_many :comments

  belongs_to :user

  def vote_count
    if id == 16
      relation_votes.count + 30
    elsif id == 15
      relation_votes.count + 38
    elsif id < 18
      relation_votes.count + 7
    else
      relation_votes.count
    end
  end
end
