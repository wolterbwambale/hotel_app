class BillingInstructionsController < ApplicationController
  before_action :set_billing_instruction, only: %i[ show edit update destroy ]

  # GET /billing_instructions or /billing_instructions.json
  def index
    @billing_instructions = BillingInstruction.all
  end

  # GET /billing_instructions/1 or /billing_instructions/1.json
  def show
  end

  # GET /billing_instructions/new
  def new
    @billing_instruction = BillingInstruction.new
  end

  # GET /billing_instructions/1/edit
  def edit
  end

  # POST /billing_instructions or /billing_instructions.json
  def create
    @billing_instruction = BillingInstruction.new(billing_instruction_params)

    respond_to do |format|
      if @billing_instruction.save
        format.html { redirect_to billing_instructions_url(@billing_instructions), notice: "Billing instruction was successfully created." }
        format.json { render :show, status: :created, location: @billing_instruction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @billing_instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billing_instructions/1 or /billing_instructions/1.json
  def update
    respond_to do |format|
      if @billing_instruction.update(billing_instruction_params)
        format.html { redirect_to billing_instruction_url(@billing_instruction), notice: "Billing instruction was successfully updated." }
        format.json { render :show, status: :ok, location: @billing_instruction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @billing_instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billing_instructions/1 or /billing_instructions/1.json
  def destroy
    @billing_instruction.destroy!

    respond_to do |format|
      format.html { redirect_to billing_instructions_url, notice: "Billing instruction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_instruction
      @billing_instruction = BillingInstruction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def billing_instruction_params
      params.require(:billing_instruction).permit(:description)
    end
end
