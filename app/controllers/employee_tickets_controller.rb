class EmployeeTicketsController < ApplicationController
  before_action :set_employee_ticket, only: %i[ show edit update destroy ]

  def index
    @employee_tickets = EmployeeTicket.all
  end

  def show
  end

  def new
    @employee_ticket = EmployeeTicket.new
  end

  def edit
  end

  def create
    @employee_ticket = EmployeeTicket.new(employee_ticket_params)
    
    respond_to do |format|
      if @employee_ticket.save
        format.html { redirect_to employee_ticket_url(@employee_ticket), notice: "Employee ticket was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @employee_ticket.update(employee_ticket_params)
        format.html { redirect_to employee_ticket_url(@employee_ticket), notice: "Employee ticket was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @employee_ticket.destroy

    respond_to do |format|
      format.html { redirect_to employee_tickets_url, notice: "Employee ticket was successfully destroyed." }
    end
  end

  private
    def set_employee_ticket
      @employee_ticket = EmployeeTicket.find(params[:id])
    end

    def employee_ticket_params
      params.require(:employee_ticket).permit(:employee_id, :ticket_id)
    end
end
