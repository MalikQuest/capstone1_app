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

Activity.create!(name: "Biking", description: "This is a top-notch mega calorie burner wourout if you really push yourself. It will also strengthen your lower body, including legs, hips, and glutes. If you are looking for a workout that is easy on the back, hips, knees and ankles, this is great choice.", url: "https://images.sportstoursinternational.co.uk/wp-content/uploads/2015/11/20160724TDF0012.jpg")
Activity.create!(name: "Swimming", description: "This is a great workout that will work all of the muscles simultaneously. Swimming keeps the heart rate up but takes some of the impact stress off your body. During this workout, you will be able to build endurance, muscle strength and cardiovascular fitness.", url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS48HrXZnv5krY7Tvqwa1uA6Yn1EX84wd-XTcBQJr3iBiOkAUeH&s")
Activity.create!(name: "Running", description: "The King of Cardio! Running increases endurance, builds muscle to maintain an optimal body fat composition, promotes cardiovascular health. strengthens the heart, and improves your overall mood! ", url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiZ39moz5DnAhUHXc0KHdvMBuQQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.thesun.co.uk%2Fsport%2F10119829%2Feliud-kipchoge-marathon-sub-2-ineos-record%2F&psig=AOvVaw0iq_U5ir6TEeltPVs3uUsX&ust=1579556112772065")
Activity.create!(name: "Weight Lifting", description: "This is a great for wanting to develop strength and size of the skeletal muscles. Not only can you build muscle mass but you can improve posture, sleep, bone density, boost metabolism, and maintain weight loss. ", url: " https://www.google.com/imgres?imgurl=https%3A%2F%2Fexperiencelife.com%2Fwp-content%2Fuploads%2F2019%2F07%2FLifting_Weights_Gym-1280x720.jpg&imgrefurl=https%3A%2F%2Fexperiencelife.com%2Farticle%2Flift-to-lose-weight%2F&docid=AwaNlc5dC9ZKGM&tbnid=MeZeED4mm5zLTM%3A&vet=12ahUKEwiUzLT2z5DnAhWDGs0KHTGgAOw4yAEQMygzMDN6BAgBEG8..i&w=1280&h=720&bih=815&biw=1089&q=weight%20leighting&ved=2ahUKEwiUzLT2z5DnAhWDGs0KHTGgAOw4yAEQMygzMDN6BAgBEG8&iact=mrc&uact=8")
Activity.create!(name: "Yoga", description: "Namaste! This is a systematic practice of physical exercise, breath control, relaxation, diet contril and positive thinking/medidation that is focus on developing harmony in the mind, body and soul. This is also great workout because it helps you stay flexible and strong without putting added stress on your joints. ", url: "https://www.google.com/imgres?imgurl=http%3A%2F%2Fblog.kolau.com%2Fwp-content%2Fuploads%2F2019%2F07%2Fmarketing-tips-for-yoga-instructors.jpg&imgrefurl=http%3A%2F%2Fblog.kolau.com%2F7-marketing-tips-yoga-instructors%2F&docid=4kBgaTaPayfegM&tbnid=zMXRjS2KutaLFM%3A&vet=10ahUKEwiJ4ObO0JDnAhVQHs0KHcNWDb8QMwivASgUMBQ..i&w=1300&h=866&bih=815&biw=1089&q=yoga&ved=0ahUKEwiJ4ObO0JDnAhVQHs0KHcNWDb8QMwivASgUMBQ&iact=mrc&uact=8")

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

Challenge.create!(description: "Cyle for 10 miles", user_id: 1, activity_id: 1, level: 1, amount: 100, deadline: Time.now, event_id: 2)
Challenge.create!(description: " Swim Laps ", user_id: 2, activity_id: 2, level: 2, amount: 100, deadline: Time.now, event_id: 2)
Challenge.create!(description: " Run 5 miles ", user_id: 1, activity_id: 3, level: 3, amount: 100, deadline: Time.now, event_id: 2)
Challenge.create!(description: "Upper & Lower Body Workout ", user_id: 2, activity_id: 4, level: 4, amount: 100, deadline: Time.now, event_id: 2)
Challenge.create!(description: " Total Body Yoga ", user_id: 1, activity_id: 5, level: 4, amount: 100, deadline: Time.now, event_id: 2)

ChallengeUser.create!(user_id: 1, challenge_id: 1, amount: "")
ChallengeUser.create!(user_id: 2, challenge_id: 2, amount: "")
ChallengeUser.create!(user_id: 1, challenge_id: 3, amount: "")
ChallengeUser.create!(user_id: 2, challenge_id: 4, amount: "")
ChallengeUser.create!(user_id: 1, challenge_id: 5, amount: "")
