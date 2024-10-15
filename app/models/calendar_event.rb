class CalendarEvent < ApplicationRecord
  belongs_to :calendar

  scope :week_of, ->(day) { where(starts_at: day.all_week) }

  def starts_at_ellapsed_minutes
    ( starts_at - starts_at.beginning_of_day ) / 60 / 60
  end

  def ends_at_ellapsed_minutes
    ( ends_at - ends_at.beginning_of_day ) / 60 / 60
  end
end
