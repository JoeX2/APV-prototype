json.array!(@people) do |person|
  json.extract! person, :id, :role, :name
  json.url person_url(person, format: :json)
end
