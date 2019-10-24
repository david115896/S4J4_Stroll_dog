class Dogsitter < ApplicationRecord
	has_many :strolls		#Dogsitter est en relation N-1 avec City et en relation N-N avec Dog
	has_many :dogs, through: :strolls
	belongs_to :city
end
