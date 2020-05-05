User.destroy_all

User.create(username: "scases", password: "password", first_name: "Stephen", last_name: "Cases", title: "admin", country: "US", bio: "Biomedical Engineer turned Software Engineer", profile_img: Faker::Placeholdit.image)
User.create(username: "gsahagian", password: "password", first_name: "Garen", last_name: "Sahagian", title: "admin", country: "US", bio: "INSERT_GAREN_BIO", profile_img: Faker::Placeholdit.image)
User.create(username: "usherpa", password: "password", first_name: "Urgen", last_name: "Sherpa", title: "admin", country: "US", bio: "INSERT_URGEN_BIO", profile_img: Faker::Placeholdit.image)

20.times do
    User.create(username: Faker::Internet.username, password: "guest", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , title: "enthusiast", country: Faker::Address.country_code, bio: Faker::GreekPhilosophers.quote, profile_img: Faker::Placeholdit.image)
end
