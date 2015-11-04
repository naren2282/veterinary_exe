class Customer < ActiveRecord::Base
   has_many:appointments
   has_many:pets
   has_and_belongs_to_many:doctors
end
