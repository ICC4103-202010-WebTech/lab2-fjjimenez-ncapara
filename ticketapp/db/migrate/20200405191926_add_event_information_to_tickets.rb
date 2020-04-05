class AddEventInformationToTickets < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :event_informations, null: true, foreign_key: true
  end
end
