# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
if Post.destroy_all && User.destroy_all
  bob = User.create(email: "bob@bob.com", password: "password")
  posts = Post.create([
    { user: bob, title: "All The Kale You Can Carry", message: "You like kale, right? It's so, like, fibrous or whatever... Come see us at the farm and pick it yourself. Call to schedule a time", price: "$5", phone: "555.4455", organic: "you know this!", location: "West Hollywood" },
    { user: bob, title: "Fresh Heirloom Tomatoes", message: "Get them while the getting's good. Hydroponically produced year-year. We ship!", price: "$3/lb", phone: "555.5544", organic: "no, but pesticide-free", location: "Santa Monica" },
    { user: bob, title: "Purple Carrots Just Harvested", message: "These carrots are the shit. You should try them. We'll be at farmers markets or you can visit the farm on Tuesdays. Ask for Jessica", price: "$2.50/bunch", phone: "444.4455", organic: "always", location: "Venice Beach" },
    { user: bob, title: "Grass-Fed Beef from Eel River Valley", message: "1/4, 1/2, or whole animals available. Call Doug for details at 555-4444", price: "varies", phone: "555.5454", organic: "no, but pasture-raised their whole lives", location: "Worldwide shipping available" },
    { user: bob, title: "santa barbara spot prawns", message: "Wild-caught just off the coast of SB. Limited supply. Call for more details, or come find me in the Marina.", price: "$15/pound", phone: "333.4455", organic: "straight from the sea", location: "Marina del Rey" },
    { user: bob, title: "Fresh Calamari By The Pound", message: "Cleaned and de-beaked. Delivery throughout LA County. 444-4444", price: "$7", phone: "565.4455", organic: "n/a", location: "Playa del Rey" }
    ])
end

# Giving the faker gem a shot here
# if !User.find_by(email: "example@gmail.com")
# User.create!(email: "example@gmail.com",
#              password:              "foobar",
#              password_confirmation: "foobar")
#
# end
#
# 10.times do |n|
#   name  = Faker::Internet.free_email
#   email = "example-#{n+1}@gmail.com"
#   password = "password"
#   User.create!(
#               email: email,
#               password:              password,
#               password_confirmation: password)
#
# end
#
# # What is syntax to add in custom terms like "Grass-Fed, pastured, sustainably-raise, organic, etc?"
# users = User.order(:created_at).take(6)
# 10.times do
#   message = Faker::Hipster.paragraph
#   users.each { |user| user.posts.create!(title: title, message: message, organic: yes, price: price, location: location) }
# end
