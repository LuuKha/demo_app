User.create!(name:  "bacukha",
             email: "bacukha@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: true)

69.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
users = User.order(:created_at).take(6)
10.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.entries.create!(content: content) }
end