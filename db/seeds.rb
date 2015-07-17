# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
survey1 = Survey.create(:title => "Learning Networking Basis", :description => "This is a seeded survey.")
question1 = survey1.questions.create(:question_number=> "1",:description => "Network Scope and Strength - How many total people are in your personal, professional, and virtual networks?", :question_type => "")

question1.answers.create(:description => "Under 25", :weightage => [10, 20, 30, 40, 50].sample)
question1.answers.create(:description => "25-100", :weightage => [10, 20, 30, 40, 50].sample)
question1.answers.create(:description => "101-250", :weightage => [10, 20, 30, 40, 50].sample)
question1.answers.create(:description => "251-500", :weightage => [10, 20, 30, 40, 50].sample)
question1.answers.create(:description => "More than 500", :weightage => [10, 20, 30, 40, 50].sample)


question2 = survey1.questions.create(:question_number=> "2",:description => "How strong are your relationships with your network? Is someone just a business card trader (you traded cards but can hardly remember where or when), an acquaintance (they know who you are and will probably return a call); a personal contact (they'll do a favor if asked); or a close friend (you can count on them when the chips are down)? 
", :question_type => "")

question2.answers.create(:description => "Everyone is a card trader", :weightage => [10, 20, 30, 40, 50].sample)
question2.answers.create(:description => "Mostly acquaintances", :weightage => [10, 20, 30, 40, 50].sample)
question2.answers.create(:description => "Lots of personal contacts", :weightage => [10, 20, 30, 40, 50].sample)
question2.answers.create(:description => "A mix of personal contacts and close friends", :weightage => [10, 20, 30, 40, 50].sample)
question2.answers.create(:description => "Mostly close friends with a few personal contacts and acquaintances", :weightage => [10, 20, 30, 40, 50].sample)


question3 = survey1.questions.create(:question_number=> "3",:description => "How diverse is your network? If everyone you know is the same age and sex as you, shares your cultural background, and works in the same area, your network is not diverse at all On the other hand, if you network with everyone from 8 to 80, of both sexes and a variety of cultural backgrounds, in different kinds of jobs in different industries, you have a very diverse network.", :question_type => "")

question3.answers.create(:description => "Looking at my network is like looking in a mirror", :weightage => [10, 20, 30, 40, 50].sample)
question3.answers.create(:description => "My network is mostly people like me, but there is some diversity", :weightage => [10, 20, 30, 40, 50].sample)
question3.answers.create(:description => "There is a good amount of diversity", :weightage => [10, 20, 30, 40, 50].sample)
question3.answers.create(:description => "My network includes people from a wide variety of backgrounds and industries", :weightage => [10, 20, 30, 40, 50].sample)
question3.answers.create(:description => "My network includes many people from a wide variety of backgrounds, interests, and industries ", :weightage => [10, 20, 30, 40, 50].sample)

question4 = survey1.questions.create(:question_number=> "4",:description => "What's the overall quality of your network contacts? For example, it is helpful to have people in your network with experience and significant accomplishments. People with strong networks of their own and who are well known within a professional sphere can be very valuable to you. People with these qualities can open doors for you that you could not do on your own.", :question_type => "")

question4.answers.create(:description => "I like them, but they aren't movers and shakers by any means.", :weightage => [10, 20, 30, 40, 50].sample)
question4.answers.create(:description => "A few people have some connections.", :weightage => [10, 20, 30, 40, 50].sample)
question4.answers.create(:description => "Some people in my network really command attention.", :weightage => [10, 20, 30, 40, 50].sample)
question4.answers.create(:description => "Many people in my network are at the top of their fields and very well connected", :weightage => [10, 20, 30, 40, 50].sample)
question4.answers.create(:description => "I can contact almost anyone on earth through the people in my network.", :weightage => [10, 20, 30, 40, 50].sample)

question5 = survey1.questions.create(:question_number=> "5",:description => "To what extent do you actively work on building your network relationships? Ways to nurture your network relationships include following up with people after you meet them, periodically connecting with people, returning phone calls and answering e-mails promptly as well as making time to meet face-to-face regularly.", :question_type => "")

question5.answers.create(:description => "I don't have time for all that", :weightage => [10, 20, 30, 40, 50].sample)
question5.answers.create(:description => "I try to reach out if I can find the time.", :weightage => [10, 20, 30, 40, 50].sample)
question5.answers.create(:description => "I try to make time, but it's hit or miss.", :weightage => [10, 20, 30, 40, 50].sample)
question5.answers.create(:description => "I consistently make time to connect with people.", :weightage => [10, 20, 30, 40, 50].sample)
question5.answers.create(:description => "I make connecting with people my top priority every day.", :weightage => [10, 20, 30, 40, 50].sample)

question6 = survey1.questions.create(:question_number=> "6",:description => "How often do you actively recruit new members to you network?", :question_type => "")

question6.answers.create(:description => "Never", :weightage => [10, 20, 30, 40, 50].sample)
question6.answers.create(:description => "Rarely", :weightage => [10, 20, 30, 40, 50].sample)
question6.answers.create(:description => "Sometimes", :weightage => [10, 20, 30, 40, 50].sample)
question6.answers.create(:description => "Often", :weightage => [10, 20, 30, 40, 50].sample)
question6.answers.create(:description => "All the time", :weightage => [10, 20, 30, 40, 50].sample)

question7 = survey1.questions.create(:question_number=> "7",:description => "How often do you help others in your network (both when asked for help and unsolicited)?", :question_type => "")

question7.answers.create(:description => "Never", :weightage => [10, 20, 30, 40, 50].sample)
question7.answers.create(:description => "Rarely", :weightage => [10, 20, 30, 40, 50].sample)
question7.answers.create(:description => "Sometimes", :weightage => [10, 20, 30, 40, 50].sample)
question7.answers.create(:description => "Often", :weightage =>[10, 20, 30, 40, 50].sample)
question7.answers.create(:description => "All the time", :weightage => [10, 20, 30, 40, 50].sample)

question8 = survey1.questions.create(:question_number=> "8",:description => "To what extent do you leverage the Internet to build and maintain your networks?", :question_type => "")

question8.answers.create(:description => "Never", :weightage => [10, 20, 30, 40, 50].sample)
question8.answers.create(:description => "Rarely", :weightage => [10, 20, 30, 40, 50].sample)
question8.answers.create(:description => "Sometimes", :weightage => [10, 20, 30, 40, 50].sample)
question8.answers.create(:description => "Often", :weightage =>[10, 20, 30, 40, 50].sample)
question8.answers.create(:description => "All the time", :weightage => [10, 20, 30, 40, 50].sample)

