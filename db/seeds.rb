# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Create 10 different skills, with a name, description (lorem) and price.
10.times do
  skill = Skill.new(
    name: Faker::Company.profession,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(80..120),
    )
  skill.save!
end
