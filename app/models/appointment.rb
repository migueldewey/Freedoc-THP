require "time"
class Appointment < ApplicationRecord
	belongs_to :doctor #Un RDV pour un Docteur
	belongs_to :patient #Un RDV pour un Patient
end
