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

end
