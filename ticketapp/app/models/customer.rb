class Customer < ApplicationRecord
  has_one :ticket_order
end
