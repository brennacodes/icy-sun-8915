require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe 'relationships' do
    it { should belong_to :department }
    it { should have_many :employee_tickets }
    it { should have_many :tickets }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :level }
  end

  describe 'instance methods' do
    it 'shows tickets in descending order by date' do
      department = Department.create(name: 'Engineering', floor: 1)
      employee = Employee.create!(name: 'Bob', level: 2, department_id: department.id)
      ticket_2 = Ticket.create!(subject: 'ticket 2', age: 1)
      ticket_1 = Ticket.create!(subject: 'ticket 1', age: 4)
      employee_ticket_1 = EmployeeTicket.create!(employee_id: employee.id, ticket_id: ticket_1.id)
      employee_ticket_2 = EmployeeTicket.create!(employee_id: employee.id, ticket_id: ticket_2.id)
      
      expect(employee.tickets_by_date_desc).to eq([ticket_1, ticket_2])
    end
    
    it 'shows the otldest ticket' do
      department = Department.create(name: 'Engineering', floor: 1)
      employee = Employee.create!(name: 'Bob', level: 2, department_id: department.id)
      ticket_2 = Ticket.create!(subject: 'ticket 2', age: 1)
      ticket_1 = Ticket.create!(subject: 'ticket 1', age: 4)
      employee_ticket_1 = EmployeeTicket.create!(employee_id: employee.id, ticket_id: ticket_1.id)
      employee_ticket_2 = EmployeeTicket.create!(employee_id: employee.id, ticket_id: ticket_2.id)

      expect(employee.oldest_ticket).to eq(ticket_1)
    end
  end
end