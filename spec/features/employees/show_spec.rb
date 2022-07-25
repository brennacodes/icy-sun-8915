require 'rails_helper'

RSpec.describe "employees/show", type: :feature do
  let!(:department_1) {Department.create(name: 'Engineering', floor: 1)}
  let!(:department_2) {Department.create(name: 'HR', floor: 2)}
  let!(:employee_1) {Employee.create(name: 'John', level: 1, department_id: department_1.id)}
  let!(:employee_2) {Employee.create(name: 'Jane', level: 3, department_id: department_2.id)}
  let!(:ticket_1) {Ticket.create(subject: 'Broken Printer', age: 1)}
  let!(:ticket_2) {Ticket.create(subject: 'Broken Monitor', age: 2)}
  let!(:ticket_3) {Ticket.create(subject: 'Broken Keyboard', age: 3)}
  let!(:ticket_4) {Ticket.create(subject: 'Broken Mouse', age: 4)}
  let!(:employeeticket_1) {EmployeeTicket.create(employee_id: employee_1.id, ticket_id: ticket_1.id)}
  let!(:employeeticket_2) {EmployeeTicket.create(employee_id: employee_1.id, ticket_id: ticket_2.id)}
  let!(:employeeticket_3) {EmployeeTicket.create(employee_id: employee_1.id, ticket_id: ticket_3.id)}
  let!(:employeeticket_4) {EmployeeTicket.create(employee_id: employee_2.id, ticket_id: ticket_4.id)}

  before do
    visit employee_path(employee_1)
  end

  it "displays each employees's name and level" do
    within '.name' do
      expect(page).to have_content(employee_1.name)
      expect(page).not_to have_content(employee_2.name)
    end

    within '.level' do
      expect(page).to have_content(employee_1.level)
      expect(page).not_to have_content(employee_2.level)
    end

    within '.department' do
      expect(page).to have_content(department_1.name)
      expect(page).not_to have_content(department_2.name)
    end

    within '.oldest_ticket' do
      expect(page).to have_content(ticket_3.subject)
      expect(page).not_to have_content(ticket_2.subject)
      expect(page).not_to have_content(ticket_4.subject)
      expect(page).not_to have_content(ticket_1.subject)
    end

    within '.all_tickets' do
      expect(page).to have_content(ticket_1.subject)
      expect(page).to have_content(ticket_2.subject)
      expect(page).to have_content(ticket_3.subject)
      expect(page).not_to have_content(ticket_4.subject)
    end
  end

end
