require 'rails_helper'

RSpec.describe "employee_tickets/show", type: :view do
  before(:each) do
    @employee_ticket = assign(:employee_ticket, EmployeeTicket.create!(
      employee: nil,
      ticket: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
