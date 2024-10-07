class CreateCalendarEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :calendar_events do |t|
      t.string :title
      t.datetime :starts_at
      t.datetime :ends_at
      t.references :calendar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
