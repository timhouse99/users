json.extract! person, :id, :first_name, :last_name, :middle_initial, :suffix, :department_id, :role, :phone_number, :eamil_address, :created_at, :updated_at
json.url person_url(person, format: :json)
