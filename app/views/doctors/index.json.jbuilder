json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :Name, :Address, :city, :state, :zip, :School_graduated_from, :Years_of_practice
  json.url doctor_url(doctor, format: :json)
end
