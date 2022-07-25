require 'rails_helper'

RSpec.describe Department, type: :model do
  describe 'relationships' do
    it { should have_many :employees }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :floor }
  end

  describe 'instance methods' do
    it 'lists employees in a department' do
      department = Department.create(name: 'Engineering', floor: 1)
      department_2 = Department.create(name: 'Engineering', floor: 2)
      employee_2 = Employee.create!(name: 'Bob', level: 2, department_id: department.id)
      employee_1 = Employee.create!(name: 'Alice', level: 1, department_id: department.id)
      employee_3 = Employee.create!(name: 'Charlie', level: 3, department_id: department_2.id)

      expect(department.list_employees).to eq 'Bob, Alice'
    end
  end
end