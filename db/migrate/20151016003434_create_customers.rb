class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :Pet_name
      t.date :Date_of_next_appointment
      t.text :reason_of_visit

      t.timestamps null: false
    end
  end
end
