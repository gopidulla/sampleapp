json.extract! complaint, :id, :section, :name, :problem, :status, :user_id, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
