class Doctor < ActiveRecord::Base
   validates :Name, length: { maximum: 35 }, presence: true  
   validates :zip, format: { with: /\d{1,5}/, message: "Zip should be atmost 5 digits" }
   validates :Years_of_practice, :inclusion => { :in => 1..100 }
   has_many :appointments
   has_and_belongs_to_many :customers
end
