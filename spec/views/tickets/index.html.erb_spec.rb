require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        subject: "Subject",
        age: 2
      ),
      Ticket.create!(
        subject: "Subject",
        age: 2
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", text: "Subject".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
