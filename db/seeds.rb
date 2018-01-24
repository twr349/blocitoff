10.times do
    User.create!(
    email: Faker::Internet.email, 
    password: 'helloworld',
    confirmed_at: Time.now
  )
end

users = User.all

10.times do 
    Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence
  )
end

 puts "Seed finished"
 puts "#{User.count} users created!"
 puts "#{Item.count} items created!"