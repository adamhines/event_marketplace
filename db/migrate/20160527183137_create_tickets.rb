class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :event_id
      t.integer :user_id
      t.string :title
      t.string :description
      t.integer :price

      t.timestamps

    end
  end
end
