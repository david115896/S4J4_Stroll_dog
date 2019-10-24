class Dog < ApplicationRecord
	has_many :strolls		#Dog est en relation N-1 avec City et en relation N-N avec Dogsitter
	has_many :dogsitter, through: :strolls
	belongs_to :city
end
