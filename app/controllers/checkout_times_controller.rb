class CheckoutTimesController < ApplicationController
  before_action :set_checkout_time, only: %i[ show edit update destroy ]

  # GET /checkout_times or /checkout_times.json
  def index
    @checkout_times = CheckoutTime.all
  end

  # GET /checkout_times/1 or /checkout_times/1.json
  def show
  end

  # GET /checkout_times/new
  def new
    @checkout_time = CheckoutTime.new
  end

  # GET /checkout_times/1/edit
  def edit
  end

  # POST /checkout_times or /checkout_times.json
  def create
    @checkout_time = CheckoutTime.new(checkout_time_params)

    respond_to do |format|
      if @checkout_time.save
        format.html { redirect_to checkout_time_url(@checkout_time), notice: "Checkout time was successfully created." }
        format.json { render :show, status: :created, location: @checkout_time }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @checkout_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checkout_times/1 or /checkout_times/1.json
  def update
    respond_to do |format|
      if @checkout_time.update(checkout_time_params)
        format.html { redirect_to checkout_time_url(@checkout_time), notice: "Checkout time was successfully updated." }
        format.json { render :show, status: :ok, location: @checkout_time }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @checkout_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkout_times/1 or /checkout_times/1.json
  def destroy
    @checkout_time.destroy!

    respond_to do |format|
      format.html { redirect_to checkout_times_url, notice: "Checkout time was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkout_time
      @checkout_time = CheckoutTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def checkout_time_params
      params.require(:checkout_time).permit(:code, :name)
    end
end
