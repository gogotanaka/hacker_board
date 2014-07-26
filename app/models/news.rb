class News < ActiveRecord::Base
  has_many :relation_votes
  has_many :users, through: :relation_vote

  has_many :comments
end
