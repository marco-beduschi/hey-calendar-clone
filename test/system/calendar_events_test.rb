require "application_system_test_case"

class CalendarEventsTest < ApplicationSystemTestCase
  setup do
    @calendar_event = calendar_events(:one)
  end

  test "visiting the index" do
    visit calendar_events_url
    assert_selector "h1", text: "Calendar events"
  end

  test "should create calendar event" do
    visit calendar_events_url
    click_on "New calendar event"

    fill_in "Calendar", with: @calendar_event.calendar_id
    fill_in "Ends at", with: @calendar_event.ends_at
    fill_in "Starts at", with: @calendar_event.starts_at
    fill_in "Title", with: @calendar_event.title
    click_on "Create Calendar event"

    assert_text "Calendar event was successfully created"
    click_on "Back"
  end

  test "should update Calendar event" do
    visit calendar_event_url(@calendar_event)
    click_on "Edit this calendar event", match: :first

    fill_in "Calendar", with: @calendar_event.calendar_id
    fill_in "Ends at", with: @calendar_event.ends_at.to_s
    fill_in "Starts at", with: @calendar_event.starts_at.to_s
    fill_in "Title", with: @calendar_event.title
    click_on "Update Calendar event"

    assert_text "Calendar event was successfully updated"
    click_on "Back"
  end

  test "should destroy Calendar event" do
    visit calendar_event_url(@calendar_event)
    click_on "Destroy this calendar event", match: :first

    assert_text "Calendar event was successfully destroyed"
  end
end
