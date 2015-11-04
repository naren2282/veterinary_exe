class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :Date_of_visit
      t.string :Pet_name
      t.string :Customer_name
      t.string :Requires_reminder
      t.text :reason_for_visit

      t.timestamps null: false
    end
  end
end
