class DoctorsController < ApplicationController
  before_action :authenticate_admin!
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authenticate_doctor!, except: [:index, :show]
  def index
    @doctors = Doctor.all
  end
  def show
    @doctor = Doctor.find(params[:id])
    @medic = Medic.new
    @medics = Medic.all
  end

end
