# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Jordan", email: "jordan@email.com", password: "password", height: 75, weight: 215, age: 24)
User.create!(name: "Peter", email: "peter@email.com", password: "password", height: 72, weight: 190, age: 26)
User.create!(name: "Jay", email: "jay@email.com", password: "password", height: 67, weight: 205, age: 42)

Activity.create!(name: "Biking")
Activity.create!(name: "Swimming")
Activity.create!(name: "Running")
Activity.create!(name: "Weight Lifting")
Activity.create!(name: "Yoga")

ActivityUser.create!(activity_id: 1, user_id: 1)
ActivityUser.create!(activity_id: 2, user_id: 2)
ActivityUser.create!(activity_id: 3, user_id: 3)
ActivityUser.create!(activity_id: 4, user_id: 2)
ActivityUser.create!(activity_id: 5, user_id: 1)

Event.create!(name: "Run Meetup", location: " ", activity_id: 4)
Event.create!(name: "Marathon", location: " ", activity_id: 4)
Event.create!(name: "Lift Together", location: " ", activity_id: 5)
Event.create!(name: "Yoga", location: " ", activity_id: 5)
Event.create!(name: "Crossfit Games", location: " ", activity_id: 2)

EventUser.create!(event_id: 1, user_id: 1)
EventUser.create!(event_id: 1, user_id: 2)
EventUser.create!(event_id: 3, user_id: 1)
EventUser.create!(event_id: 3, user_id: 2)
EventUser.create!(event_id: 4, user_id: 1)

Challenge.create!(description: " ", user_id: 1, activity_id: 1, level: 1, amount: 100, deadline: Time.now, event_id: 2)
Challenge.create!(description: " ", user_id: 2, activity_id: 2, level: 2, amount: 100, deadline: Time.now, event_id: 2)
Challenge.create!(description: " ", user_id: 1, activity_id: 3, level: 3, amount: 100, deadline: Time.now, event_id: 2)
Challenge.create!(description: " ", user_id: 2, activity_id: 4, level: 4, amount: 100, deadline: Time.now, event_id: 2)
Challenge.create!(description: " ", user_id: 1, activity_id: 5, level: 4, amount: 100, deadline: Time.now, event_id: 2)

ChallengeUser.create!(user_id: 1, challenge_id: 1, amount: "")
ChallengeUser.create!(user_id: 2, challenge_id: 2, amount: "")
ChallengeUser.create!(user_id: 1, challenge_id: 3, amount: "")
ChallengeUser.create!(user_id: 2, challenge_id: 4, amount: "")
ChallengeUser.create!(user_id: 1, challenge_id: 5, amount: "")
