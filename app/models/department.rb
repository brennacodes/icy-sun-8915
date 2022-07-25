class Department < ApplicationRecord
  has_many :employees

  validates_presence_of :name, :floor

  def list_employees
    employees.map(&:name).join(', ')
  end
end