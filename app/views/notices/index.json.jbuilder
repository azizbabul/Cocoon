json.array!(@notices) do |notice|
  json.extract! notice, :id, :name, :general, :dept, :year, :semister
  json.url notice_url(notice, format: :json)
end
