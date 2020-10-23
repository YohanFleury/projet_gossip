require 'faker'

10.times do |index|
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        age: Faker::Number.between(from: 01, to: 97),
        description: Faker::Lorem.sentence(word_count: 10),
        email: Faker::Internet.email 
    )
end
puts "10 users créés"

10.times do |index|
    City.create(
        name: Faker::Name.name,        
        zip_code: Faker::Number.between(from: 01, to: 97) 
    )
   
end
puts "10 villes créées"

20.times do |index|
    Gossip.create(
        title: Faker::Name.name,
        content: Faker::Name.name
    )
end
puts  "20 gossips créés"

10.times do |index|
    Tag.create(
        title: Faker::Name.name
    )
end
puts "10 tag créés"