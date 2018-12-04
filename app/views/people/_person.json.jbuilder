json.extract! person, :id, :first_name, :last_name, :middle_initial, :suffix, :department_id, :role, :phone_number, :eamil_address, :UserAccounts, :user_id, :gecos, :home_dir, :password, :access_granted_date, :access_suspended_date, :created_at, :updated_at
json.url person_url(person, format: :json)
