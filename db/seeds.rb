

require 'faker'

20.times do
        city = City.create!(city_name: Faker::Address.city)
end

100.times do |index|

      	dogi = Dog.create!(dog_name: Faker::Creature::Dog.name, city: City.all.sample)
        sitter = Dogsitter.create!(sitter_name: Faker::Name.first_name, city: City.all.sample)

	strolli = Stroll.create(dog: dogi, city: dogi.city, dogsitter: Dogsitter.where(city: dogi.city).sample)
end



puts "20 villes creees, 100 chien crees, 100 promeneurs crees et 100 promenade creees"


