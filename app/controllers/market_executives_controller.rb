class MarketExecutivesController < ApplicationController
  before_action :set_market_executive, only: %i[ show edit update destroy ]

  # GET /market_executives or /market_executives.json
  def index
    @market_executives = MarketExecutive.all
  end

  # GET /market_executives/1 or /market_executives/1.json
  def show
  end

  # GET /market_executives/new
  def new
    @market_executive = MarketExecutive.new
  end

  # GET /market_executives/1/edit
  def edit
  end

  # POST /market_executives or /market_executives.json
  def create
    @market_executive = MarketExecutive.new(market_executive_params)

    respond_to do |format|
      if @market_executive.save
        format.html { redirect_to market_executive_url(@market_executive), notice: "Market executive was successfully created." }
        format.json { render :show, status: :created, location: @market_executive }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @market_executive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /market_executives/1 or /market_executives/1.json
  def update
    respond_to do |format|
      if @market_executive.update(market_executive_params)
        format.html { redirect_to market_executive_url(@market_executive), notice: "Market executive was successfully updated." }
        format.json { render :show, status: :ok, location: @market_executive }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @market_executive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_executives/1 or /market_executives/1.json
  def destroy
    @market_executive.destroy!

    respond_to do |format|
      format.html { redirect_to market_executives_url, notice: "Market executive was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market_executive
      @market_executive = MarketExecutive.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def market_executive_params
      params.require(:market_executive).permit(:market_executive_code, :name)
    end
end
