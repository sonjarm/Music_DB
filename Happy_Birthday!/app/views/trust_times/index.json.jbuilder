json.array!(@trust_times) do |trust_time|
  json.extract! trust_time, :id, :Happy_Birthday, :notes, :birthdate, :done
  json.url trust_time_url(trust_time, format: :json)
end
