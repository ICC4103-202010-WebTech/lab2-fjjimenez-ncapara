class Ticket < ApplicationRecord
  has_one :ticket_order
  belongs_to :event_information
end
