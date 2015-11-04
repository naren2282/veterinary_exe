class ChangeYearsofpracticeOfDoctors < ActiveRecord::Migration
  def change
     change_column :doctors, :Years_of_practice, :integer
  end
end
