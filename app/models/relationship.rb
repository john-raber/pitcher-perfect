class Relationship < ApplicationRecord
  belongs_to :follower, class_name: 'User'
  belongs_to :followed, class_name: 'User'

  validates :follower_id, presence: true
  validates :followed_id, presence: true
  validate :user_cant_follow_itself

  def user_cant_follow_itself
    if follower_id == followed_id
      errors.add(:follower_id, "Can't follow yourself")
    end
  end
end
