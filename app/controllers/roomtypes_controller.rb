class RoomtypesController < ApplicationController
  before_action :set_roomtype, only: %i[ show edit update destroy ]

  def index
    @roomtypes = Roomtype.all
  end

  # GET /roomtypes/1 or /roomtypes/1.json
  def show
  end

  # GET /roomtypes/new
  def new
    @roomtype = Roomtype.new
  end

  # GET /roomtypes/1/edit
  def edit
  end

  # POST /roomtypes or /roomtypes.json
  def create
    @roomtype = Roomtype.new(roomtype_params)

    respond_to do |format|
      if @roomtype.save
        format.html { redirect_to roomtypes_url(@roomtypes), notice: "Roomtype was successfully created." }
        format.json { render :show, status: :created, location: @roomtype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @roomtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roomtypes/1 or /roomtypes/1.json
  def update
    respond_to do |format|
      if @roomtype.update(roomtype_params)
        format.html { redirect_to roomtypes_url(@roomtypes), notice: "Roomtype was successfully updated." }
        format.json { render :show, status: :ok, location: @roomtype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @roomtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomtypes/1 or /roomtypes/1.json
  def destroy
    @roomtype.destroy!

    respond_to do |format|
      format.html { redirect_to roomtypes_url, notice: "Roomtype was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomtype
      @roomtype = Roomtype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def roomtype_params
      params.require(:roomtype).permit(:code, :name, :max_guest, :minium_advance, :cancel_charges)
    end
end
