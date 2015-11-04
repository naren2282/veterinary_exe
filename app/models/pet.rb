class Pet < ActiveRecord::Base

   validates :Name_of_pet, length: { maximum: 35 }, presence: true 
   validates :Type_of_pet, inclusion: { in: %w(Dog Cat Bird)}
   validates :Breed, length: { maximum: 35 }, presence: true 
   validates :Age, :Weight, :Date_of_last_visit, presence: true
   belongs_to:customer
   has_one:appointment
end
