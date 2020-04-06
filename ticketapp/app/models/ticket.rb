class Ticket < ApplicationRecord
  has_many :ticket_order
  belongs_to :event_information, optional: true
end
