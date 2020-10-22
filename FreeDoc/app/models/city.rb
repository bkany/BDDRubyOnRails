class City < ApplicationRecord
	has_many :patients, through: :appointments
	has_many :doctors, through: :appointments
end
