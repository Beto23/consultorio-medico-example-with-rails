class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end
  def show
    #code
  end

end
