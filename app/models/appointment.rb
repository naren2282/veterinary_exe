class Appointment < ActiveRecord::Base

   validate :visit_date_validation
   def visit_date_validation
       if self.Date_of_visit < Date.today
	   errors.add(:Date_of_visit, "Visit date cant be in past")
       end
   end
   validates :Pet_name, :Customer_name, :reason_for_visit, presence: true
   belongs_to :doctor
   belongs_to :customer
   belongs_to :pet

  
end
