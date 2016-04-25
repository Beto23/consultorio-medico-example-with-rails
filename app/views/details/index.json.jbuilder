json.array!(@details) do |detail|
  json.extract! detail, :id, :consultation_id, :reason, :symptoms, :diagnosis, :medicament, :total
  json.url detail_url(detail, format: :json)
end
