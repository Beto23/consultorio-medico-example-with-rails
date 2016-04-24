class Consultation < ActiveRecord::Base
  belongs_to :medic
  belongs_to :patient
end
