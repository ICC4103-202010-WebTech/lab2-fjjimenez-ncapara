class AddQualityToTicket < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :Quality, :string
  end
end
