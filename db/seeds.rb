

require 'faker'

20.times do 		#creation de 20 villes
        city = City.create!(city_name: Faker::Address.city)
end

100.times do |index|		
	city_new = City.all.sample
      	dogi = Dog.create!(dog_name: Faker::Creature::Dog.name, city: city_new)		#creation de 100 chiens avec une ville aleatoire
        sitter = Dogsitter.create!(sitter_name: Faker::Name.first_name, city: city_new)		#creation de 100 chiens avec une ville aleatoire

	strolli = Stroll.create(dog: dogi, city: dogi.city, dogsitter: Dogsitter.where(city: dogi.city).sample)		#creation d'une promenade pour chaque chien avec un dogsitter de la meme ville 
end



puts "20 villes creees, 100 chien crees, 100 promeneurs crees et 100 promenade creees"


