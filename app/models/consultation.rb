class Consultation < ActiveRecord::Base
  belongs_to :medic
  belongs_to :patient
  validates :patient_id, presence: true
  validates :medic_id, presence: true
  validates :date, presence: true, :uniqueness => { :message => "and time of consultation is busy!"  }
  has_one :detail

end
