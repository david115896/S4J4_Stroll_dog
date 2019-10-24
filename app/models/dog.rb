class Dog < ApplicationRecord
	has_many :strolls
	has_many :dogsitter, through: :strolls
	belongs_to :city
end
