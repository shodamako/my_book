json.array!(@my_readings) do |my_reading|
  json.extract! my_reading, :id, :book, :author, :price, :publisher, :release_date, :isbn
  json.url my_reading_url(my_reading, format: :json)
end
