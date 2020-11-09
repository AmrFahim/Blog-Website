# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i = 1;
20.times {
  username = "user"+(i.to_s)
  email = username+"@example.com"
  password = username+"password"
  user = User.create(username: username, email: email, password: password)
  Article.create(title: "this is a test title from #{username}",
                  description: "This is a test description to test the functionality of the project", user: user)

  i+=1
}