json.array!(@consultations) do |consultation|
  json.extract! consultation, :id, :date, :medic_id, :patient_id, :time
  json.url consultation_url(consultation, format: :json)
end
