json.array!(@patients) do |patient|
  json.extract! patient, :id, :first_name, :last_name, :birth_date, :gender, :state, :city, :address, :cp, :email, :phone, :cell, :blood_type, :smoking, :alcoholism, :hereditary_background, :pathological, :non_pathological, :allergies, :surgeries
  json.url patient_url(patient, format: :json)
end
