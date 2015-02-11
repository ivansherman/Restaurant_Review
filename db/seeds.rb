# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

restaurants = [{ 
  name: 'Super Rico Colombian Bistro',
  price: 1,
  food: 'Colombian, Burgers, Hot Dogs',
  address: '57 W Central Blvd
Orlando, FL 32801',
  phone:'(407) 426-7007'
  },
  {
  name: 'Harp & Celt Irish Pub & Restaurant',
  price: 2,
  food: 'Irish, Pubs, Sports Bars',
  address: '25 S Magnolia Ave
Orlando, FL 32801',
  phone: '(407) 481-2928',
  },
  {
  name: 'Latin Square Cuisine',
  price: 1,
  food: 'Latin American',
  address: '250 S Orange Ave
Orlando, FL 32801',
  phone: '(407) 608-4181'
  },
  {
  name: 'Ceviche Tapas Bar & Restaurant',
  price: 2,
  food: 'Tapas',
  address: '125 W Church St
Orlando, FL 32801',
  phone: '(321) 281-8140'
  }]

  Restaurant.delete_all
  
  restaurants.each do |restaurant| 
  	latest = Restaurant.create(restaurant)
  	puts "created #{latest.name}"
  end

  5.times do |n| 
  	user = User.create(name: "User #{n}", email: "user_#{n}@example.com")
  	puts "created #{user.name}"
  end