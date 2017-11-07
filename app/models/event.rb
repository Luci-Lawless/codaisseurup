class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  # validates :ends_at, presence: true
  #
  # def end_at_after_start_at?
  #   if end_at < start_at
  #     errors.add :end_at, "Must be after start date"
  #   end
end
