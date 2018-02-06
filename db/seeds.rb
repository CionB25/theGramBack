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

Post.create(comment: "It's my body, I do what I want!", user_id: User.find_by(username: "aaron").id)
Post.create(comment: "Que lo que!", user_id: User.find_by(username: "aaron").id)
Post.create(comment: "BassKeyYatch", user_id: User.find_by(username: "aaron").id)
Post.create(comment: "Summa cumma laude", user_id: User.find_by(username: "anna"))
Post.create(comment: "In a chocloate Chewbacca fur", user_id: User.find_by(username: "justin").id)
Post.create(comment: "I'm outchea", user_id: User.find_by(username: "vijay").id)
Post.create(comment: "Dreamweaver, Dreamcatcher", user_id: User.find_by(username: "wise").id)
Post.create(comment: "On my forearm, that's my foreshadow", user_id: User.find_by(username: "wise").id)
Post.create(comment: "Phone ringing it's Ashley", user_id: User.find_by(username: "holly").id)
Post.create(comment: "She want me to dig in her bone marrow", user_id: User.find_by(username: "vijay").id)

Micropost.create(comment: "Nah. What. Yea.", post_id: 1, owner: "vijay")
Micropost.create(comment: "Watch ya head!", post_id: 1, owner: "wise")
Micropost.create(comment: "Flow drop like a ton of bricks", post_id: 1, owner: "aaron")
Micropost.create(comment: "Foccacia bread", post_id: 3, owner: "holly")
Micropost.create(comment: "How we stack dough", post_id: 4, owner: "vijay")
Micropost.create(comment: "Funds or...", post_id: 2, owner: "wise")
Micropost.create(comment: "Chips", post_id: 2, owner: "aaron")
