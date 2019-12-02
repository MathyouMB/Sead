# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    username: "Admin",
    email: "admin@email.com",
    password: "123"
)

5.times do 
    Note.create(
        title: Faker::Marketing.buzzwords,
        text: Faker::Lorem.paragraph(sentence_count: 5),
        user_id: 1,
    )
end
