class User < ActiveRecord::Base
  has_many :questions, :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
end
