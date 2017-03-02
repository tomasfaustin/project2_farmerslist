# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# if Post.destroy_all && User.destroy_all
#   bob = User.create(email: "bob@bob.com", password: "password")
#   posts = Post.create([
#     { user: bob, title: "All The Kale You Can Carry - $5", message: "You like kale, right? It's so, like, fibrous or whatever... Come see us at the farm and pick it yourself. Call to schedule a time. 555-5555", organic: "you know this!", location: "West Hollywood" },
#     { user: bob, title: "Fresh Heirloom Tomatoes - $3/lb", message: "Get them while the getting's good. Hydroponically produced year-year. We ship! 444-4444", organic: "no, but pesticide-free" location: "Santa Monica" },
#     { user: bob, title: "Purple Carrots Just Harvested - $2.50/bunch", message: "These carrots are the shit. You should try them. We'll be at farmers markets or you can visit the farm on Tuesdays. Ask for Jessica at 333-3333", organic: "always", location: "Venice Beach" },
#     { user: bob, title: "Grass-Fed Beef from Eel River Valley", message: "1/4, 1/2, or whole animals available. Call Doug for details at 555-4444", organic: "no, but pasture-raised their whole lives", location: "Worldwide shipping available" },
#     { user: bob, title: "santa barbara spot prawns - $15/pound", message: "555-5555. Wild-caught just off the coast of SB. Limited supply. Call for more details, or come find me in the Marina.", organic: "straight from the sea", location: "Marina del Rey" },
#     { user: bob, title: "Fresh Calamari By The Pound - $7", message: "Cleaned and de-beaked. Delivery throughout LA County. 444-4444", organic: "n/a" location: "Santa Monica" }
#     ])
# end

# Giving the faker gem a shot here
if !User.find_by(email: "example@gmail.com")
User.create!(email: "example@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar")

end

30.times do |n|
  name  = Faker::Internet.free_email
  email = "example-#{n+1}@gmail.com"
  password = "password"
  User.create!(
              email: email,
              password:              password,
              password_confirmation: password)

end

# What is syntax to add in custom terms like "Grass-Fed, pastured, sustainably-raise, organic, etc?"
users = User.order(:created_at).take(6)
30.times do
  message = Faker::Hipster.paragraph
  users.each { |user| user.posts.create!(message: message) }
end
