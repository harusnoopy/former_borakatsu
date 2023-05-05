class Event < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :participation_users, through: :participations, source: :user
  has_many :favorites, dependent: :destroy
  belongs_to :organizer

  validates :name, presence: true
  validates :introduction, presence: true
  validates :date, presence: true
  validates :schedule, presence: true
  validates :number_of_people, presence: true
  validates :organizer_id, presence: true

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
