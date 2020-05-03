class Doctor < ApplicationRecord
	has_many :appointments   #un Docteur a plusieurs RDV
	has_many :patients, through: :appointments #Un Docteur a plusieurs Patients
	                                          #a travers les RDV
end
