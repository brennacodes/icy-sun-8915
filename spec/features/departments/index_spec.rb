require 'rails_helper'

# As a user,
# When I visit the Department index page,
# I see each department's name and floor
# And underneath each department, I can see the names of all of its employees

RSpec.describe 'Department index page' do
  let!(:department_1) {Department.create(name: 'Engineering', floor: 1)}
  let!(:department_2) {Department.create(name: 'HR', floor: 2)}
  let!(:department_3) {Department.create(name: 'Marketing', floor: 3)}

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
      expect(page).to have_content(department_2.name)
      expect(page).to have_content(department_2.floor)
      expect(page).to have_content(department_3.name)
      expect(page).to have_content(department_3.floor)
    end
  end

  
end