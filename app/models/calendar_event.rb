class CalendarEvent < ApplicationRecord
  belongs_to :calendar

  scope :week_of, ->(day) { where(starts_at: day.all_week) }
end
