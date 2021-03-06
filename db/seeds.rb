# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed
  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    breed_body = HTTParty.get("https://api.thecatapi.com/v1/breeds/").body
    breeds = JSON.parse(breed_body)

    breeds.shuffle.first(10).each_with_index do |breed, i|
      img_body = HTTParty.get("https://api.thecatapi.com/v1/images/search?breed_ids=#{breed["id"]}").body
      imgs = JSON.parse(img_body)

      animal = Animal.create!(
        kind: "cat",
        name: Faker::Creature::Cat.name,
        age: Faker::Number.between(from: 1, to: 10),
        breed: breed["name"],
        imgUrl: imgs.first["url"]
      )
      puts "animal #{i}, kind:cat:\r\n Name: #{animal.name}\r\n Age: #{animal.age}\r\n Breed: #{animal.age} \r\n imgUrl: #{animal.imgUrl}"
    end

    10.times do |i|
      animal = Animal.create!(
        kind: "dog",
        name: Faker::Creature::Dog.name,
        age: Faker::Number.between(from: 1, to: 10),
        breed: Faker::Creature::Dog.breed,
        imgUrl: ""
      )
      puts "animal #{i}, kind:dog:\r\n Name: #{animal.name}\r\n Age: #{animal.age}\r\n Breed: #{animal.age}"
    end
  end
end

Seed.begin
