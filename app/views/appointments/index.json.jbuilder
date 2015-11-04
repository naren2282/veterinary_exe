json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :Date_of_visit, :Pet_name, :Customer_name, :Requires_reminder, :reason_for_visit
  json.url appointment_url(appointment, format: :json)
end
