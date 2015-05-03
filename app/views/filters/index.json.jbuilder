json.array!(@filters) do |filter|
  json.extract! filter, :id, :ftype, :subtype
  json.url filter_url(filter, format: :json)
end
