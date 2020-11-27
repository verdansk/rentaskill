# frontEnd = ["html", "css", "javascript", "react", "Jquery", "vue", "swift"]
# backEnd = ["ruby", "php", "python", "java"]
# fullStack = ["ruby", "php", "python", "java", "html", "css", "javascript"]
# dataScience = ["python", "sql", "R", "scala"]
# design = ["figma", "invision", "Adobe" ]
# productManagament = ["scrum", "agile", "kanban"]
require "open-uri"

cities = ["The Hague", "Amsterdam", "Rotterdam", "Utrecht Eindhoven", "Haarlem Groningen", "Arnhem Leeuwarden", "Maastricht", "Zwolle Assen", "Middelburg", "Kralendijk", "Capelle aan den IJssel", "Delft Oegstgeest", "Gouda Schiedam", "Zoetermeer", "Hoorn Purmerend", "Veenendaal", "Maassluis", "Rijswijk"]



25.times do |city|
  name =  Faker::Name.name,
  user = User.create!(
    name: name,
    email: Faker::Internet.email,
    password: 123456,
    address: cities[city]
    )

  user.save!
  file = URI.open('https://source.unsplash.com/900x900/?portrait')
  user.photo.attach(io: file, filename: "#{name}.png", content_type: 'image/png')
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

