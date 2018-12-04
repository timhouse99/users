json.extract! user_accounts_person, :id, :account_id, :person_id, :created_at, :updated_at
json.url user_accounts_person_url(user_accounts_person, format: :json)
