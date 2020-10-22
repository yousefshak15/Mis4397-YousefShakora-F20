#Dealerships
4.times do |i|
  Dealerships.create(name: "#{Faker::Company.name} AutoSales", address: Faker::Address.street_address, city: Faker::Address.city,  state: Faker::Address.state, zip: Faker::Address.zip, owner: Faker::Name.name)
)
end

#Salesmen
10.times do |i|
	salesman.create(name: "#{Faker::Company.name} AutoSales", address: Faker::Address.street_address, city: Faker::Address.city,  state: Faker::Address.state, zip: Faker::Address.zip, owner: Faker::Name.name)
)
	#complete
end

#Cars
200.times |i|
cars.create(name: "#{Faker::Company.name} AutoSales", address: Faker::Address.street_address, city: Faker::Address.city,  state: Faker::Address.state, zip: Faker::Address.zip, owner: Faker::Name.name)
)
	#complete
end

#Prospects
100.times |i|
prospect.create(name: "#{Faker::Company.name} AutoSales", address: Faker::Address.street_address, city: Faker::Address.city,  state: Faker::Address.state, zip: Faker::Address.zip, owner: Faker::Name.name)
)
	#complete
end

```
