json.array!(@questions) do |question|
  json.extract! question, :id, :description, :age, :gender, :race, :smoking_status, :immunocompromised, :renal_impairment, :pregnancy, :tag
  json.url question_url(question, format: :json)
end
