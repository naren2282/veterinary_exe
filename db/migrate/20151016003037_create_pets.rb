class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :Name_of_pet
      t.string :Type_of_pet
      t.string :Breed
      t.integer :Age
      t.float :Weight
      t.date :Date_of_last_visit

      t.timestamps null: false
    end
  end
end
