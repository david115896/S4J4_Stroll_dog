class Stroll < ApplicationRecord
	  belongs_to :dogsitter		#Stroll fait la relation N-N entre Dogsitter et Dog et en relation N-1 avec City
	  belongs_to :dog
	  belongs_to :city
end
