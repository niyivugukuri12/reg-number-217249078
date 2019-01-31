json.extract! studentform, :id, :regno, :name, :telephone, :address, :created_at, :updated_at
json.url studentform_url(studentform, format: :json)
