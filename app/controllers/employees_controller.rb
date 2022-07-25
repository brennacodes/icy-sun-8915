class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[ show edit update destroy ]

  def index
    @employees = Employee.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end
  
  def update
    @employee_ticket = EmployeeTicket.create!(employee_id: @employee.id, ticket_id: params[:ticket_id])

    respond_to do |format|
      if @employee_ticket.save
        format.html { redirect_to employee_url(@employee), notice: "Employee was successfully updated." }
      else
        format.html { render :edit, notice: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private
    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.permit(:subject, :age)
    end
end
