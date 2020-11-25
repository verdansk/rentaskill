# frontEnd = ["html", "css", "javascript", "react", "Jquery", "vue", "swift"]
# backEnd = ["ruby", "php", "python", "java"]
# fullStack = ["ruby", "php", "python", "java", "html", "css", "javascript"]
# dataScience = ["python", "sql", "R", "scala"]
# design = ["figma", "invision", "Adobe" ]
# productManagament = ["scrum", "agile", "kanban"]

cities = ["Amsterdam", "Rotterdam", "Den Haag", "Apeldoorn", "Utrecht"]

25.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 123456,
    address: cities.sample
    )
  user.save!
end

puts "created 10 users!"

10.times do
  skill = Skill.new(
    name: Faker::ProgrammingLanguage.name,
    category: "front-end",
    price_per_day: rand(80..120),
    user_id: rand(1..4)
    )
  skill.save!
end

puts "created 10 front-end skills!"


10.times do
  skill = Skill.new(
    name: Faker::ProgrammingLanguage.name,
    category: "back-end",
    price_per_day: rand(80..120),
    user_id: rand(5..9)
    )
  skill.save!
end

puts "created 10 back-end skills!"

10.times do
  skill = Skill.new(
    name: Faker::ProgrammingLanguage.name,
    category: "full-stack",
    price_per_day: rand(80..120),
    user_id: rand(10..13)
    )
  skill.save!
end

puts "created 10 full-stack skills!"

10.times do
  skill = Skill.new(
    name: Faker::ProgrammingLanguage.name,
    category: "data-science",
    price_per_day: rand(80..120),
    user_id: rand(14..17)
    )
  skill.save!
end

puts "created 10 data-science skills!"


10.times do
  skill = Skill.new(
    name: Faker::ProgrammingLanguage.name,
    category: "design",
    price_per_day: rand(80..120),
    user_id: rand(18..20)
    )
  skill.save!
end

puts "created 10 design skills!"


10.times do
  skill = Skill.new(
    name: Faker::ProgrammingLanguage.name,
    category: "product management",
    price_per_day: rand(80..120),
    user_id: rand(21..24)
    )
  skill.save!
end

puts "created 10 product management skills!"
