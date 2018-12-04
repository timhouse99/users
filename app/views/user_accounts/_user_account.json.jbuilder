json.extract! user_account, :id, :user_id, :gecos, :home_dir, :password, :access_granted_date, :access_suspended_date, :created_at, :updated_at
json.url user_account_url(user_account, format: :json)
