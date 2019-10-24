class City < ApplicationRecord
	has_many :strolls 	#City en relation 1-N avec Stroll, Dogsitter et Dog
	has_many :dogsitters
	has_many :dogs
end
