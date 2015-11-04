json.array!(@customers) do |customer|
  json.extract! customer, :id, :Pet_name, :Date_of_next_appointment, :reason_of_visit
  json.url customer_url(customer, format: :json)
end
