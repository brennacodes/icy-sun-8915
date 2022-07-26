# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
department_1 = Department.create!(name: 'Engineering', floor: 1)
department_2 = Department.create!(name: 'HR', floor: 2)
department_3 = Department.create!(name: 'Marketing', floor: 3)
department_4 = Department.create!(name: 'Sales', floor: 4)
department_5 = Department.create!(name: 'IT', floor: 5)

employee_1 = Employee.create!(name: 'John', level: 2, department: department_1)
employee_2 = Employee.create!(name: 'Jane', level: 1, department: department_1)
employee_3 = Employee.create!(name: 'Joe', level: 3, department: department_4)
employee_4 = Employee.create!(name: 'Jill', level: 1, department: department_2)
employee_5 = Employee.create!(name: 'Jack', level: 2, department: department_5)
employee_6 = Employee.create!(name: 'Juan', level: 3, department: department_2)
employee_7 = Employee.create!(name: 'Juanita', level: 1, department: department_3)

ticket_1 = Ticket.create!(subject: 'Printer broken', age: 1)
ticket_2 = Ticket.create!(subject: 'Faulty outlet', age: 2)
ticket_3 = Ticket.create!(subject: 'Card reader not working', age: 3)
ticket_4 = Ticket.create!(subject: 'HR WiFi not working', age: 4)
ticket_5 = Ticket.create!(subject: 'Fluorescent light out on level 3', age: 5)
ticket_6 = Ticket.create!(subject: 'Missing stapler reported', age: 10)
ticket_7 = Ticket.create!(subject: 'Computer spontaneously combusted', age: 1)
ticket_8 = Ticket.create!(subject: 'Ransomware detected', age: 2)
ticket_9 = Ticket.create!(subject: 'Wheels on chair broken', age: 3)
ticket_10 = Ticket.create!(subject: 'Laptop camera only points in one direction', age: 4)
ticket_11 = Ticket.create!(subject: 'Intercom makes demon noises', age: 5)
ticket_12 = Ticket.create!(subject: 'Help', age: 10)

employee_ticket_1 = EmployeeTicket.create!(employee: employee_1, ticket: ticket_1)
employee_ticket_7 = EmployeeTicket.create!(employee: employee_1, ticket: ticket_7)
employee_ticket_1 = EmployeeTicket.create!(employee: employee_2, ticket: ticket_1)
employee_ticket_2 = EmployeeTicket.create!(employee: employee_2, ticket: ticket_2)
employee_ticket_8 = EmployeeTicket.create!(employee: employee_2, ticket: ticket_8)
employee_ticket_3 = EmployeeTicket.create!(employee: employee_3, ticket: ticket_3)
employee_ticket_4 = EmployeeTicket.create!(employee: employee_4, ticket: ticket_4)
employee_ticket_11 = EmployeeTicket.create!(employee: employee_4, ticket: ticket_11)
employee_ticket_4 = EmployeeTicket.create!(employee: employee_5, ticket: ticket_4)
employee_ticket_5 = EmployeeTicket.create!(employee: employee_5, ticket: ticket_5)
employee_ticket_12 = EmployeeTicket.create!(employee: employee_5, ticket: ticket_12)
employee_ticket_6 = EmployeeTicket.create!(employee: employee_6, ticket: ticket_6)
employee_ticket_9 = EmployeeTicket.create!(employee: employee_6, ticket: ticket_9)
employee_ticket_12 = EmployeeTicket.create!(employee: employee_6, ticket: ticket_12)
employee_ticket_9 = EmployeeTicket.create!(employee: employee_7, ticket: ticket_9)
employee_ticket_10 = EmployeeTicket.create!(employee: employee_7, ticket: ticket_10)

