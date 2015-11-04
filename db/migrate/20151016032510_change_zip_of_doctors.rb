class ChangeZipOfDoctors < ActiveRecord::Migration
  def change
     change_column :doctors, :zip, :integer
  end
end
