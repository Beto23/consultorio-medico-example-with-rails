class SpecialtiesController < ApplicationController

  before_action :set_specialty, except: [:index, :new, :create]

  #Para pasar datos a la vista desde el controller se utilizan variables de clase
    ##Y estas variables empiezan con un @variable estas variables podremos tener acceso
    ##tanto como en la vista y el controller. Las variables locales que no tienen @ solo
    ## son accesibles para el controller.


  #GET /specialties
  def index
    #obtiene todas los registros SELECT * FROM specialties
    @specialties = Specialty.all
  end

  def new
    @specialty = Specialty.new
  end

  def create
    @specialty = Specialty.new(specialty_params)
    if @specialty.save
      redirect_to specialties_path
    else
      render :new
    end
  end

  def update
    if @specialty.update(specialty_params)
      redirect_to specialties_path
    else
      render :edit
    end
  end

  def destroy
    @specialty.destroy
    redirect_to specialties_path
  end

  private

  def set_specialty
    @specialty = Specialty.find(params[:id])
  end

  def specialty_params
    params.require(:specialty).permit(:name)
  end

end
