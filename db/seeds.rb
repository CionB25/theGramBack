# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


aaron = User.create(username: "aaron")
vijay = User.create(username: "vijay")
justin = User.create(username: "justin")
anna = User.create(username: "anna")
wise = User.create(username: "wise")
holly = User.create(username: "holly")

aaron.follow(vijay)
justin.follow(anna)
wise.follow(aaron)
holly.follow(aaron)
vijay.follow(justin)
justin.follow(wise)
holly.follow(wise)
