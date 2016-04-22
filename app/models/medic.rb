class Medic < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :specialty
  validates :doctor_id, :uniqueness => { :message => "ya ha sido agregado!"  }

end
