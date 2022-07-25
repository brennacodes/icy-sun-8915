json.extract! employee_ticket, :id, :employee_id, :ticket_id, :created_at, :updated_at
json.url employee_ticket_url(employee_ticket, format: :json)
