class MedicsController < ApplicationController
  before_action :authenticate_admin!, only: [:create, :update, :destroy]
  before_action :set_medic, only: [:show, :edit, :update, :destroy]

  # GET /medics
  # GET /medics.json
  def index
    @medics = Medic.all
  end

  # GET /medics/1
  # GET /medics/1.json
  def show
    @Medic = Medic.new
  end

  # GET /medics/new
  def new
    @medic = Medic.new
    @doctors = Doctor.all
  end

  # GET /medics/1/edit
  def edit
  end

  # POST /medics
  # POST /medics.json
  def create
    @medic = Medic.new(medic_params)

    respond_to do |format|
      if @medic.save
        format.html { redirect_to medics_path, notice: 'Doctor was successfully created.' }
        format.json { render :show, status: :created, location: @medic }
      else
        format.html { redirect_to medics_path, alert: 'Doctor has already been created' }
        format.json { render json: @medic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medics/1
  # PATCH/PUT /medics/1.json
  def update
    respond_to do |format|
      if @medic.update(medic_params)
        format.html { redirect_to @medic, notice: 'Medic was successfully updated.' }
        format.json { render :show, status: :ok, location: @medic }
      else
        format.html { render :edit }
        format.json { render json: @medic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medics/1
  # DELETE /medics/1.json
  def destroy
    @medic.destroy
    respond_to do |format|
      format.html { redirect_to medics_path, notice: 'Medic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medic
      @medic = Medic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medic_params
      params.require(:medic).permit(:doctor_id, :specialty_id, :phone, :cell_phone, :address)
    end
end
