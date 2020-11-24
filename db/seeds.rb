# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Create 10 different skills, with a name, description (lorem) and price.
100.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: rand(100000..999999),
    )
  user.save
end

100.times do
  skill = Skill.new(
    name: Faker::ProgrammingLanguage.name,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(80..120),
    user_id: User.all.sample.id
    )
  skill.save
end
