class EmployeeTicketsController < ApplicationController
  before_action :set_employee_ticket, only: %i[ show edit update destroy ]

  # GET /employee_tickets or /employee_tickets.json
  def index
    @employee_tickets = EmployeeTicket.all
  end

  # GET /employee_tickets/1 or /employee_tickets/1.json
  def show
  end

  # GET /employee_tickets/new
  def new
    @employee_ticket = EmployeeTicket.new
  end

  # GET /employee_tickets/1/edit
  def edit
  end

  # POST /employee_tickets or /employee_tickets.json
  def create
    @employee_ticket = EmployeeTicket.new(employee_ticket_params)

    respond_to do |format|
      if @employee_ticket.save
        format.html { redirect_to employee_ticket_url(@employee_ticket), notice: "Employee ticket was successfully created." }
        format.json { render :show, status: :created, location: @employee_ticket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_tickets/1 or /employee_tickets/1.json
  def update
    respond_to do |format|
      if @employee_ticket.update(employee_ticket_params)
        format.html { redirect_to employee_ticket_url(@employee_ticket), notice: "Employee ticket was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_ticket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_tickets/1 or /employee_tickets/1.json
  def destroy
    @employee_ticket.destroy

    respond_to do |format|
      format.html { redirect_to employee_tickets_url, notice: "Employee ticket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_ticket
      @employee_ticket = EmployeeTicket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_ticket_params
      params.require(:employee_ticket).permit(:employee_id, :ticket_id)
    end
end
