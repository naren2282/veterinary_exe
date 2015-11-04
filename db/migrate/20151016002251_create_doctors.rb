class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :Name
      t.text :Address
      t.string :city
      t.string :state
      t.string :zip
      t.string :School_graduated_from
      t.string :Years_of_practice

      t.timestamps null: false
    end
  end
end
