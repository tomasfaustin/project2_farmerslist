# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Post.destroy_all && User.destroy_all
  bob = User.create(email: "bob@bob.com", password: "password")
  posts = Post.create([
    { user: bob, title: "All The Kale You Can Carry - $5", message: "You like kale, right? It's so, like, fibrous or whatever... Come see us at the farm and pick it yourself. Call to schedule a time. 555-5555", organic: true, location: "West Hollywood" },
    { user: bob, title: "Fresh Heirloom Tomatoes - $3/lb", message: "Get them while the getting's good. Hydroponically produced year-year. We ship! 444-4444", organic: false, location: "Santa Monica" }, { user: bob, title: "Purple Carrots Just Harvested - $2.50/bunch", message: "These carrots are the shit. You should try them. We'll be at farmers markets or you can visit the farm on Tuesdays. Ask for Jessica at 333-3333", organic: true, location: "Venice Beach" },
    { user: bob, title: "Grass-Fed Beef from Eel River Valley", message: "1/4, 1/2, or whole animals available. Call Doug for details at 555-4444", organic: true, location: "Worldwide" }
    ])
end
