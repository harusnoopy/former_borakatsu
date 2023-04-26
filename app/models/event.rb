class Event < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :participation_users, through: :participations, source: :user
  has_many :favorites, dependent: :destroy
  belongs_to :organizer
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
