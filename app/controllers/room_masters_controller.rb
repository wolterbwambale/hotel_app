class RoomMastersController < ApplicationController
  before_action :set_room_master, only: %i[ show edit update destroy ]

  # GET /room_masters or /room_masters.json
  def index
    @room_masters = RoomMaster.all.order(:room_no )
  end

  # GET /room_masters/1 or /room_masters/1.json
  def show
  end

  # GET /room_masters/new
  def new
    @room_master = RoomMaster.new
  end

  # GET /room_masters/1/edit
  def edit
  end

  # POST /room_masters or /room_masters.json
  def create
    @room_master = RoomMaster.new(room_master_params)


    respond_to do |format|
      if @room_master.save
        format.html { redirect_to room_master_url(@room_master), notice: "Room master was successfully created." }
        format.json { render :show, status: :created, location: @room_master }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_masters/1 or /room_masters/1.json
  def update
    respond_to do |format|
      if @room_master.update(room_master_params)
        format.html { redirect_to room_master_url(@room_master), notice: "Room master was successfully updated." }
        format.json { render :show, status: :ok, location: @room_master }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_masters/1 or /room_masters/1.json
  def destroy
    @room_master.destroy!

    respond_to do |format|
      format.html { redirect_to room_masters_url, notice: "Room master was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_master
      @room_master = RoomMaster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_master_params
      params.require(:room_master).permit(:room_no, :maximum_clean_time, :bed, :block, :floor, :key_code, :occupancy, :roomtype_id, :room_feature_id)
    end
end
