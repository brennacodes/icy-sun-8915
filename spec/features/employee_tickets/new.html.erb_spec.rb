require 'rails_helper'

RSpec.describe "employee_tickets/new", type: :view do
  before(:each) do
    assign(:employee_ticket, EmployeeTicket.new(
      employee: nil,
      ticket: nil
    ))
  end

  it "renders new employee_ticket form" do
    render

    assert_select "form[action=?][method=?]", employee_tickets_path, "post" do

      assert_select "input[name=?]", "employee_ticket[employee_id]"

      assert_select "input[name=?]", "employee_ticket[ticket_id]"
    end
  end
end
