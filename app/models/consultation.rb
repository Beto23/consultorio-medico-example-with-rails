class Consultation < ActiveRecord::Base
  belongs_to :medic
  belongs_to :patient
  validates :patient_id, presence: true
  validates :medic_id, presence: true
  validates :time, presence: true, length: { maximum: 5  }
  validates :fecha, presence: true
end
