class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true

  # before_validation :ensure_end_date_after_start_date
  # private
  #   def ensure_end_date_after_start_date
  #     if end_at < start_at
  #       errors.add :end_at, "Must be after start date"
  #     end
  #   end
end
