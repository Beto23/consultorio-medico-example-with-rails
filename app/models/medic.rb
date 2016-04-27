class Medic < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :specialty
  validates :doctor_id, :uniqueness => { :message => "ya ha sido agregado!"  }
  validates :phone, presence: true
  validates :address, presence: true
  validates :specialty_id, presence: true
  has_many :consultations
end
