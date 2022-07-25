require 'rails_helper'

# As a user,
# When I visit the Department index page,
# I see each department's name and floor
# And underneath each department, I can see the names of all of its employees

RSpec.describe 'Department index page' do
  let!(:department_1) {Department.create(name: 'Engineering', floor: 1)}
  let!(:department_2) {Department.create(name: 'HR', floor: 2)}
  let!(:department_3) {Department.create(name: 'Marketing', floor: 3)}
  let!(:employee_1) {Employee.create(name: 'John', level: 1, department_id: department_1.id)}
  let!(:employee_2) {Employee.create(name: 'Jane', level: 1, department_id: department_1.id)}
  let!(:employee_3) {Employee.create(name: 'Joe', level: 2, department_id: department_2.id)}
  let!(:employee_4) {Employee.create(name: 'Jill', level: 3, department_id: department_2.id)}
  let!(:employee_5) {Employee.create(name: 'Jack', level: 3, department_id: department_3.id)}

  it "renders a list of departments" do
    visit departments_path

    assert_selector "tr>td", text: "Engineering", count: 1
    assert_selector "tr>td", text: 1.to_s, count: 1
  end

  it "displays each department's name and floor" do
    visit departments_path

    within 'table' do
      expect(page).to have_content(department_1.name)
      expect(page).to have_content(department_1.floor)
      expect(page).to have_content(employee_1.name)
      expect(page).to have_content(employee_2.name)
      expect(page).to have_content(department_2.name)
      expect(page).to have_content(department_2.floor)
      expect(page).to have_content(employee_3.name)
      expect(page).to have_content(employee_4.name)
      expect(page).to have_content(department_3.name)
      expect(page).to have_content(department_3.floor)
      expect(page).to have_content(employee_5.name)
    end
  end


end