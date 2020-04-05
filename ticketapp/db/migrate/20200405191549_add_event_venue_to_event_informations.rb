class AddEventVenueToEventInformations < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_informations, :event_venues, null: true, foreign_key: true
  end
end
