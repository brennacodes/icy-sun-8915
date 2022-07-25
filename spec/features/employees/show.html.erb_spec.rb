require 'rails_helper'

RSpec.describe "employees/show", type: :feature do
  let!(:department_1) {Department.create(name: 'Engineering', floor: 1)}
  let!(:department_2) {Department.create(name: 'HR', floor: 2)}
  let!(:employee_1) {Employee.create(name: 'John', level: 1, department_id: department_1.id)}
  let!(:employee_2) {Employee.create(name: 'Jane', level: 3, department_id: department_2.id)}

  before do
    visit employee_path(employee_1)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end

  # As a user,
  # When I visit the Employee show page,
  # I see the employee's name, department
  # and a list of all of their tickets from oldest to youngest.
  # I also see the oldest ticket assigned to the employee listed separately

  it "displays each employees's name and level" do
    within 'table' do
      expect(page).to have_content(employee_1.name)
      expect(page).to have_content(employee_1.level)
      expect(page).not_to have_content(employee_2.name)
      expect(page).not_to have_content(employee_2.level)
    end
  end

end
