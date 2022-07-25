require 'rails_helper'

# As a user,
# When I visit the Department index page,
# I see each department's name and floor
# And underneath each department, I can see the names of all of its employees

RSpec.describe 'Department index page' do
  it "displays each department's name and floor" do
    department_1 = Department.create!(name: 'Engineering', floor: 1)
    department_2 = Department.create!(name: 'HR', floor: 2)
    department_3 = Department.create!(name: 'Marketing', floor: 3)
    department_4 = Department.create!(name: 'Sales', floor: 4)
    department_5 = Department.create!(name: 'IT', floor: 5)

    visit departments_path

    expect(page).to have_content(department_1.name)
    expect(page).to have_content(department_1.floor)
    expect(page).to have_content(department_2.name)
    expect(page).to have_content(department_2.floor)
    expect(page).to have_content(department_3.name)
    expect(page).to have_content(department_3.floor)
    expect(page).to have_content(department_4.name)
    expect(page).to have_content(department_4.floor)
    expect(page).to have_content(department_5.name)
    expect(page).to have_content(department_5.floor)
  end
end