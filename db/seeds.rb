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

user_1 = User.create!(name: "BlueLemon", email: "ari@drookman.com", password_digest: "aridrookman19")

post_1 = Post.create!(title: "Facebook targets FaceTime Audio with its newest experimental app ‘CatchUp’", article: "As most of the world focuses heavily on video conferencing, Facebook’s new product experimentation team has debuted its latest experimental app dubbed “CatchUp.” As reported by TechCrunch, CatchUp focuses on allowing people to make audio calls with up to eight other people.

CatchUp aims to set itself apart with a few features. First off, users can set their status as “Ready to Talk” or offline. The app also does not require a FaceBook account to use the service. The report explains:

While there are a number of group chat apps available to users today, what makes CatchUp unique is that the calls it enables are audio-only, not video, and it flags when users are available. In addition, CatchUp won’t need a Facebook account to use the service — the app works with your phone’s contacts list.

In a blog post, Facebook also points out that its goal is to address the biggest problem people have with making phone calls today: ensuring someone else’s availability:

Based on our studies, we found that one of the main reasons people don’t call friends and family more frequently is that they don’t know when they are available to talk or are worried they may reach them at an inconvenient time. CatchUp addresses this problem, and even makes group calling as easy as one tap.

In CatchUp, users can create and join group calls of up to eight people, or they can be one-on-one. There’s also a focus on ease of use, as you can place a call with one tap and add additional contacts without having to “merge” the calls.

CatchUp is currently only available in the United States, with Facebook testing it under its “NPE” experimental brand for now. Whether or not the application is ever broadly released remains to be seen. What do you think of CatchUp? Would you ever use it over something like FaceTime Audio? Let us know down in the comments.", img_url: "https://i2.wp.com/9to5mac.com/wp-content/uploads/sites/6/2020/05/Image-5.jpeg?w=2000&quality=82&strip=all&ssl=1", user_id: user_1.id)

Comment.create!(name: user_1.name, message: "The biggest issue I see with this app is Facebook. No thanks!", post_id: post_1.id, user_id: user_1.id)

post_2 = Post.create!(title: "Switzerland first to release COVID-19 app using Apple and Google Exposure Notification API", article: "The first app to take advantage of the Apple and Google Exposure Notification API has been released in Switzerland, according to a new report from the BBC. The app is called “SwissCovid” and is currently available to select essential workers.  As of right, members of the Swiss outlook as well as hospital workers and civil servants can install the SwissCovid app. A wider rollout is planned, but the report explains that in Switzerland, members of parliament must approve the app before it is widely released.  In Switzerland’s case, MPs must first debate and approve the scheme before it is offered to the general public. The government hopes this can be done by mid-June.  In Latvia, developers hope to release their Exposure Notification API to everyone by as soon as Thursday because a parliamentary vote is not required. The report says that Apple has already approved the app to appear in the App Store:  By contrast, the Latvian team – which has also incorporated the API – is able to proceed without a parliamentary", img_url: "https://i2.wp.com/9to5mac.com/wp-content/uploads/sites/6/2020/05/02-COVID-19-Exposure-Notifications-Sample-Public-Health-Authority-App-Positive-Result-iOS.png?w=2000&quality=82&strip=all&ssl=1", user_id: user_1.id)

tag_1 = Tag.create!(name: "Facebook")

tag_2 = Tag.create!(name: "Apple")

tag_3 = Tag.create!(name: "Google")

post_1.tags << tag_1

post_2.tags << tag_2
post_2.tags << tag_3