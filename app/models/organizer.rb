class Organizer < ApplicationRecord
  has_many :events, dependent: :destroy

  validates :name, presence: true
  validates :introduction, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
  validates :telephone_number, presence: true
  validates :email, presence: true
  validates :homepage, presence: true

end
