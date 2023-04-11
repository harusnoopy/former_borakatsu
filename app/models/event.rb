class Event < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :organizer
end
