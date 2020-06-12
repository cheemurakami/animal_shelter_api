FactoryBot.define do
  factory(:animal) do
    kind {'cat'}
    name {Faker::Creature::Cat.name}
    age {Faker::Number.between(from: 1, to: 10)}
    breed {Faker::Creature::Cat.breed}
  end
end