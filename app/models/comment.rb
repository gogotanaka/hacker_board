class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :news
  belongs_to :comment
end
