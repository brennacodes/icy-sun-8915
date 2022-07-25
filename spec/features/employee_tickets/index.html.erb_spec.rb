require 'rails_helper'

RSpec.describe "employee_tickets/index", type: :view do
  before(:each) do
    assign(:employee_tickets, [
      EmployeeTicket.create!(
        employee: nil,
        ticket: nil
      ),
      EmployeeTicket.create!(
        employee: nil,
        ticket: nil
      )
    ])
  end

  it "renders a list of employee_tickets" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
