json.extract! appointment, :id, :date, :user_id, :doctor_id, :completed, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
