json.array!(@annuals) do |annual|
  json.extract! annual, :id, :type, :date, :profile_id
  json.url annual_url(annual, format: :json)
end
