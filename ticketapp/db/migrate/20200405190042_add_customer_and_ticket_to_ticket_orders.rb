class AddCustomerAndTicketToTicketOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :ticket_orders, :customers, null: true, foreign_key: true
    add_reference :ticket_orders, :tickets, null: true, foreign_key: true
  end
end
