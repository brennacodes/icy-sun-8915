class Employee < ApplicationRecord
  belongs_to :department
  has_many :employee_tickets
  has_many :tickets, through: :employee_tickets

  validates_presence_of :name, :level

  def tickets_by_date_desc
    tickets.order(created_at: :desc)
  end

  def oldest_ticket
    tickets_by_date_desc.first
  end
end