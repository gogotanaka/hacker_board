class News < ActiveRecord::Base
  has_one :relation_vote
  has_many :users, through: :relation_vote
end
