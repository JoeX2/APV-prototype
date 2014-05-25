json.array!(@data_letters) do |data_letter|
  json.extract! data_letter, :id, :titel, :text, :material_id
  json.url data_letter_url(data_letter, format: :json)
end
