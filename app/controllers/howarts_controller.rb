class HowartsController < ApplicationController
  before_action :set_howart, only: %i[ show edit update destroy ]

  # GET /howarts or /howarts.json
  def index
    @howarts = Howart.all
  end

  # GET /howarts/1 or /howarts/1.json
  def show
  end

  # GET /howarts/new
  def new
    @howart = Howart.new
  end

  # GET /howarts/1/edit
  def edit
  end

  # POST /howarts or /howarts.json
  def create
    @howart = Howart.new(howart_params)

    respond_to do |format|
      if @howart.save
        format.html { redirect_to howart_url(@howart), notice: "Howart was successfully created." }
        format.json { render :show, status: :created, location: @howart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @howart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /howarts/1 or /howarts/1.json
  def update
    respond_to do |format|
      if @howart.update(howart_params)
        format.html { redirect_to howart_url(@howart), notice: "Howart was successfully updated." }
        format.json { render :show, status: :ok, location: @howart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @howart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /howarts/1 or /howarts/1.json
  def destroy
    @howart.destroy

    respond_to do |format|
      format.html { redirect_to howarts_url, notice: "Howart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_howart
      @howart = Howart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def howart_params
      params.require(:howart).permit(:name, :location, :house)
    end
end
