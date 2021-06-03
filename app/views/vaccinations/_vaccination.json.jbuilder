json.extract! vaccination, :id, :name, :dose_number, :date, :kid_id, :nurse_id, :vaccine_id, :created_at, :updated_at
json.url vaccination_url(vaccination, format: :json)
