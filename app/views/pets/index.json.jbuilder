json.array!(@pets) do |pet|
  json.extract! pet, :id, :Name_of_pet, :Type_of_pet, :Breed, :Age, :Weight, :Date_of_last_visit
  json.url pet_url(pet, format: :json)
end
