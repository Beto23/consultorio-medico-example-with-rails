class AddEspecialidadIdAndIdDoctorToMedics < ActiveRecord::Migration
  def change
    add_reference :medics, :specialty, index: true, foreign_key: true
    add_reference :medics, :doctor, index: true, foreign_key: true
  end
end
