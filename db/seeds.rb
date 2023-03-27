puts "Seeding superheroes 🦸..."

18.times do
    Hero.create(
        name: Faker::Name.name,
        super_name: Faker::Superhero.name,
    )
end

18.times do
    Power.create(
        name: Faker::Superhero.power,
        description: Faker::Lorem.paragraph_by_chars(number: 21)
    )
end


puts "Done!To Infinity and Beyond! ⚡"

