class Patient < ApplicationRecord
	has_many :appointments    #un Patient a plusieurs RDV
	has_many :doctors, through: :appointments #Un Patient a plusieurs Docteurs
	                                          #a travers les RDV
end
