require 'rails_helper'

RSpec.describe "employee_tickets/edit", type: :view do
  before(:each) do
    @employee_ticket = assign(:employee_ticket, EmployeeTicket.create!(
      employee: nil,
      ticket: nil
    ))
  end

  it "renders the edit employee_ticket form" do
    render

    assert_select "form[action=?][method=?]", employee_ticket_path(@employee_ticket), "post" do

      assert_select "input[name=?]", "employee_ticket[employee_id]"

      assert_select "input[name=?]", "employee_ticket[ticket_id]"
    end
  end
end
