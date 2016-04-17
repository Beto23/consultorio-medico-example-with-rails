class SpecialtiesController < ApplicationController

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

  private

  def specialty_params
    params.require(:specialty).permit(:name)
  end

end
