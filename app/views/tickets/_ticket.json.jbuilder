json.extract! ticket, :id, :subject, :age, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
