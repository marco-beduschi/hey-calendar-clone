class CalendarsController < ApplicationController
  before_action :set_calendar, only: %i[ show ]

  # GET /calendars/1 or /calendars/1.json
  def show
    @calendar_events = @calendar.calendar_events.week_of(Time.current)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar
      @calendar = Calendar.find_or_create_by(id: 1)
    end
end
