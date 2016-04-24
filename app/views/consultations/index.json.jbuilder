json.array!(@consultations) do |consultation|
  json.extract! consultation, :id, :time, :fecha, :medic_id, :patient_id
  json.url consultation_url(consultation, format: :json)
end
