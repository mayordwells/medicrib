json.extract! patient, :id, :first_name, :last_name, :gender, :date_of_birth, :address, :longitude, :latitude :created_at, :updated_at
json.url patient_url(patient, format: :json)