json.extract! appointment, :id, :location, :patient_name, :practitioner_name, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)