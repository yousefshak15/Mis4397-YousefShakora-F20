require 'faker'
status = {"new hire", "junior", "senior", "trainee"}
departments = {"Sales","Harketing", "Hospitality", "Accounting ", "saftey"}
departments_code = {"SLS", "HOS", "ACT","SFT"}
reviews ={"Awesome!", " the best in town", "Disappointed", "Too expensive"}
statuses = {"Asian", "European", "Latin", "African"}
8.times do |i|
    store_name = Faker::Company.name
    store.create(name:"#{store_name} Grocery Store", description"", status: statuses.sample, code:faker::code.
    npi, url: Faker::Internet.domain_name(domain:store_name),address: Faker::Address.street_address, city:
    Faker::Address.city, state: Faker::Address.state, zip: Faker:Address.zip, country: Faker::Address.country)
end
puts "creating Store"
Store.all.each do |s|
    
    #Department
    4.times do |i|
        s.departments.create!(name: departments.sample, description: "", code: departments_code.sample)
    end
    puts "creating department"
    
end

#Employee 
Department.all.each do |d|
    10.times do |i|
        first_name = Faker::Name.last_name
        last_name = Faker::Name.last_name
        d_employee.create!(first_name: first_name, last_name: last_name, description:"", role: Faker::Company
        .profession, status: status.sample)
    end
end

#Review
200.times.do |i|
    s = Store.all.sample
    d = Department.where("store_id = " + s.id.to_s).sample
    e = Employee.where("department_id" + d.id.to_s).sample
    Review.create(store_id: s.id, employe_id: e.id. note: reviews.sample)
end

    