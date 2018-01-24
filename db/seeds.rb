10.times do
    User.create!(
    email: Faker::Internet.email, 
    password: 'helloworld',
    confirmed_at: Time.now
  )
end

users = User.all

20.times do 
    Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence,
    created_at: Faker::Date.backward(7)
  )
end

20.times do 
    Item.create!(
    user: users.sample,
    name: "old item!!",
    created_at: "2018-01-01 17:16:58"
  )
end

 puts "Seed finished"
 puts "#{User.count} users created!"
 puts "#{Item.count} items created!"