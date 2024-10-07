json.extract! calendar_event, :id, :title, :starts_at, :ends_at, :calendar_id, :created_at, :updated_at
json.url calendar_event_url(calendar_event, format: :json)
