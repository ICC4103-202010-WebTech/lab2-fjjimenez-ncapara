class EventVenue < ApplicationRecord
  belongs_to :event_information,optional: true
end
