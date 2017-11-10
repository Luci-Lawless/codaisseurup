class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos
  has_many :attendances, dependent: :destroy
  has_many :guests, through: :attendances, source: :user

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  # validate :you_are_planning_the_past
  #
  #  def you_are_planning_the_past
  #     if startdate_before_enddate?
  #       true
  #     else
  #       errors.add(:ends_at, “End Date must be at least a day later than start date.“)
  #     end
  #   end
  #
  #   def startdate_before_enddate?
  #     ends_at - starts_at >= 1
  #   end
end
