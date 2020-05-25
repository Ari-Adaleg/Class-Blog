# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Comment.destroy_all
Tag.destroy_all

user_1 = User.create!(name: "Stephen J. Sundberg", email: "ari@drookman.com", password_digest: "aridrookman19")

post_1 = Post.create!(title: "iPadOS 14 wishlist: Keyboard shortcuts, new home screen features, more...", article: "The iPad just got quite a bit better thanks to iPadOS 13.4, which added full support for trackpads. Now, attention has shifted to iPadOS 14, which is expected to be announced next month during Apple’s virtual Worldwide Developers Conference. What new features can we expect in iPadOS 14? I have a few suggestions… System-wide custom keyboard shortcuts. I’ve been using my iPad Pro considerably more often recently thanks to the new Magic Keyboard, which has been a complete and total game-changer for my workflow. One of the biggest adjustments I’ve had to make, however, is the lack of custom system-wide keyboard shortcuts. For example, on the Mac I have keyboard shortcuts set up to easily stop and start time tracking with Toggl. This is something that’s not currently possible on the iPad. Instead, I rely on the Timery widget alongside Shortcuts that I’ve created for different timers and workflows.", img_url: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2019/06/ipados-1.jpg?w=2000&quality=82&strip=all&ssl=1", user_id: user_1.id)

Comment.create!(name: user_1.name, message: "I just want to be able to specify default apps. I love the built in apps, but sometimes I like to use other browsers. I would also like to see Safari return to Windows 10 because I can't afford a mac and I really would like to sync up favorites, reading list, history, etc. I know Safari left because the space was filled with better browsers but now everything is based on Blink except Firefox! Apple could expand it's Windows user base on iPhone and iPad that way. But what do I know.", post_id: post_1.id, user_id: user_1.id)

tag_1 = Tag.create!(name: "iPadOS")

post_1.tags << tag_1